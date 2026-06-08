from __future__ import annotations

import os
from concurrent.futures import ThreadPoolExecutor
from typing import Callable, Iterable, TypeVar


T = TypeVar("T")
R = TypeVar("R")


def pipeline_workers() -> int:
    raw = os.environ.get("THESIS_PARALLELISM", "")
    if raw:
        try:
            return max(1, int(raw))
        except ValueError:
            pass
    cpu_count = os.cpu_count() or 1
    return max(1, min(8, cpu_count))


def parallel_map(task: Callable[[T], R], items: Iterable[T], workers: int | None = None) -> list[R]:
    sequence = list(items)
    if len(sequence) <= 1:
        return [task(item) for item in sequence]

    worker_count = min(workers or pipeline_workers(), len(sequence))
    if worker_count <= 1:
        return [task(item) for item in sequence]

    with ThreadPoolExecutor(max_workers=worker_count) as executor:
        return list(executor.map(task, sequence))