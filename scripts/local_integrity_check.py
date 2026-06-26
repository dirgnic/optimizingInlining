"""Run a local similarity and missing-citation check over thesis files."""

from __future__ import annotations

import argparse
import collections
import re
from dataclasses import dataclass
from pathlib import Path

from pypdf import PdfReader


WORD_RE = re.compile(r"[a-z0-9]+")
CITE_RE = re.compile(r"\\(?:cite|parencite|textcite|autocite|footcite)\b")


@dataclass(frozen=True)
class Occurrence:
    source: str
    page: int


def normalize_words(text: str) -> list[str]:
    return WORD_RE.findall(text.lower())


def extract_pdf_pages(path: Path) -> list[str]:
    reader = PdfReader(str(path))
    pages: list[str] = []
    for page in reader.pages:
        pages.append(page.extract_text() or "")
    return pages


def ngrams(words: list[str], size: int) -> set[str]:
    if len(words) < size:
        return set()
    return {" ".join(words[i : i + size]) for i in range(len(words) - size + 1)}


def build_source_index(source_pdfs: list[Path], ngram_size: int) -> dict[str, list[Occurrence]]:
    # Index exact normalized phrases from the local research pdfs.
    index: dict[str, list[Occurrence]] = collections.defaultdict(list)
    for pdf in source_pdfs:
        for page_number, text in enumerate(extract_pdf_pages(pdf), start=1):
            for phrase in ngrams(normalize_words(text), ngram_size):
                index[phrase].append(Occurrence(pdf.name, page_number))
    return index


def find_matches(
    thesis_pdf: Path,
    source_index: dict[str, list[Occurrence]],
    ngram_size: int,
) -> list[tuple[int, str, list[Occurrence]]]:
    matches: list[tuple[int, str, list[Occurrence]]] = []
    for page_number, text in enumerate(extract_pdf_pages(thesis_pdf), start=1):
        for phrase in sorted(ngrams(normalize_words(text), ngram_size)):
            if phrase in source_index:
                matches.append((page_number, phrase, source_index[phrase]))
    return matches


def latex_paragraphs_without_cites(tex_paths: list[Path], min_words: int) -> list[tuple[str, int, int, str]]:
    # Flag long prose paragraphs that do not contain a latex citation command.
    findings: list[tuple[str, int, int, str]] = []
    skip_env = False
    for tex_path in tex_paths:
        lines = tex_path.read_text(encoding="utf-8").splitlines()
        start_line = 1
        paragraph: list[str] = []
        for line_number, line in enumerate(lines + [""], start=1):
            stripped = line.strip()
            if stripped.startswith(r"\begin{minted}") or stripped.startswith(r"\begin{verbatim}"):
                skip_env = True
            if stripped.startswith(r"\end{minted}") or stripped.startswith(r"\end{verbatim}"):
                skip_env = False
                paragraph = []
                start_line = line_number + 1
                continue
            if skip_env or stripped.startswith("%"):
                continue

            if stripped:
                if not paragraph:
                    start_line = line_number
                paragraph.append(stripped)
                continue

            joined = " ".join(paragraph)
            words = normalize_words(joined)
            if len(words) >= min_words and not CITE_RE.search(joined):
                snippet = re.sub(r"\s+", " ", joined)[:280]
                findings.append((str(tex_path), start_line, len(words), snippet))
            paragraph = []
    return findings


def write_report(
    report_path: Path,
    thesis_pdf: Path,
    source_pdfs: list[Path],
    matches: list[tuple[int, str, list[Occurrence]]],
    uncited: list[tuple[str, int, int, str]],
    ngram_size: int,
) -> None:
    unique_matches: dict[str, tuple[int, list[Occurrence]]] = {}
    for page, phrase, occurrences in matches:
        unique_matches.setdefault(phrase, (page, occurrences))

    by_source = collections.Counter()
    for _, occurrences in unique_matches.values():
        for occurrence in occurrences[:1]:
            by_source[occurrence.source] += 1

    lines: list[str] = []
    lines.append("# Local Similarity / Citation Check")
    lines.append("")
    lines.append("This report was generated locally only. No text was uploaded to an external service.")
    lines.append("")
    lines.append(f"- Thesis PDF: `{thesis_pdf}`")
    lines.append(f"- Research PDFs checked: {len(source_pdfs)}")
    lines.append(f"- Exact phrase window: {ngram_size} normalized words")
    lines.append(f"- Unique exact overlaps found: {len(unique_matches)}")
    lines.append(f"- Long LaTeX paragraphs without citation: {len(uncited)}")
    lines.append("")

    lines.append("## Exact Overlap Summary")
    lines.append("")
    if by_source:
        for source, count in by_source.most_common():
            lines.append(f"- `{source}`: {count} unique {ngram_size}-word overlaps")
    else:
        lines.append("No exact long overlaps were found against the local research PDFs.")
    lines.append("")

    lines.append("## Exact Overlap Details")
    lines.append("")
    if unique_matches:
        for idx, (phrase, (page, occurrences)) in enumerate(list(unique_matches.items())[:80], start=1):
            src = ", ".join(f"{o.source} p.{o.page}" for o in occurrences[:3])
            lines.append(f"{idx}. Thesis PDF page {page}; source: {src}")
            lines.append(f"   `{phrase}`")
    else:
        lines.append("No exact long overlaps to inspect.")
    lines.append("")

    lines.append("## Long Paragraphs Without Citation")
    lines.append("")
    if uncited:
        for path, line, count, snippet in uncited:
            lines.append(f"- `{path}:{line}` ({count} words)")
            lines.append(f"  {snippet}")
    else:
        lines.append("No long uncited LaTeX paragraphs were found under the configured threshold.")
    lines.append("")

    lines.append("## Interpretation")
    lines.append("")
    lines.append(
        "Exact overlap counts should be read manually. Titles, bibliography entries, "
        "standard terminology, and cited theorem/algorithm names can create benign matches. "
        "The risky cases are long source-like sentences in the body without nearby citation."
    )
    report_path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=Path.cwd())
    parser.add_argument("--ngram-size", type=int, default=18)
    parser.add_argument("--uncited-min-words", type=int, default=95)
    args = parser.parse_args()

    root = args.root
    thesis_dir = root / "modele" / "thesis"
    thesis_pdf = thesis_dir / "paper" / "main.pdf"
    research_dir = root / "research"
    out_dir = thesis_dir / "out" / "local_check"
    out_dir.mkdir(parents=True, exist_ok=True)

    source_pdfs = sorted(research_dir.glob("*.pdf"))
    source_index = build_source_index(source_pdfs, args.ngram_size)
    matches = find_matches(thesis_pdf, source_index, args.ngram_size)

    tex_paths = [
        thesis_dir / "paper" / "0-abstract.tex",
        thesis_dir / "paper" / "main.tex",
    ]
    uncited = latex_paragraphs_without_cites(tex_paths, args.uncited_min_words)

    report_path = out_dir / f"local_similarity_check_{args.ngram_size}gram.md"
    write_report(report_path, thesis_pdf, source_pdfs, matches, uncited, args.ngram_size)
    print(report_path)


if __name__ == "__main__":
    main()
