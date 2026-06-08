from __future__ import annotations

import json
import math
import os
import random

from data import Callsite, OUT
from teach import simulated_module_size


def normalize(xs: list[list[float]]) -> tuple[list[list[float]], list[float], list[float]]:
    n = len(xs)
    dim = len(xs[0])
    mean = [sum(row[i] for row in xs) / n for i in range(dim)]
    std = []
    for i in range(dim):
        var = sum((row[i] - mean[i]) ** 2 for row in xs) / n
        std.append(math.sqrt(var) or 1.0)
    return [[(row[i] - mean[i]) / std[i] for i in range(dim)] for row in xs], mean, std


def sigmoid(x: float) -> float:
    if x >= 0:
        return 1.0 / (1.0 + math.exp(-x))
    ex = math.exp(x)
    return ex / (1.0 + ex)


class Logistic:
    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        self.xs, self.mean, self.std = normalize(xs)
        self.w = [0.0] * len(xs[0])
        self.b = 0.0
        for _ in range(450):
            for x, y in zip(self.xs, ys):
                p = sigmoid(self.b + sum(wi * xi for wi, xi in zip(self.w, x)))
                err = p - y
                self.b -= 0.12 * err
                for i, xi in enumerate(x):
                    self.w[i] -= 0.12 * err * xi

    def proba(self, x: list[float]) -> float:
        xn = [(x[i] - self.mean[i]) / self.std[i] for i in range(len(x))]
        return sigmoid(self.b + sum(wi * xi for wi, xi in zip(self.w, xn)))


class DecisionTree:
    def __init__(self, depth: int = 3, feature_subset: list[int] | None = None):
        self.depth = depth
        self.feature_subset = feature_subset

    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        self.root = self._build(xs, ys, self.depth)

    def _gini(self, ys: list[int]) -> float:
        p = sum(ys) / len(ys) if ys else 0.0
        return 1.0 - p * p - (1.0 - p) * (1.0 - p)

    def _build(self, xs: list[list[float]], ys: list[int], depth: int):
        p = sum(ys) / max(1, len(ys))
        if depth == 0 or p in {0.0, 1.0} or len(xs) <= 2:
            return {"p": p}
        best = None
        for fi in self.feature_subset or list(range(len(xs[0]))):
            for threshold in sorted(set(row[fi] for row in xs)):
                left_y = [y for row, y in zip(xs, ys) if row[fi] <= threshold]
                right_y = [y for row, y in zip(xs, ys) if row[fi] > threshold]
                if not left_y or not right_y:
                    continue
                score = (len(left_y) * self._gini(left_y) + len(right_y) * self._gini(right_y)) / len(ys)
                if best is None or score < best[0]:
                    best = (score, fi, threshold)
        if best is None:
            return {"p": p}
        _, fi, threshold = best
        left_x, left_y, right_x, right_y = [], [], [], []
        for row, y in zip(xs, ys):
            if row[fi] <= threshold:
                left_x.append(row)
                left_y.append(y)
            else:
                right_x.append(row)
                right_y.append(y)
        return {
            "feature": fi,
            "threshold": threshold,
            "left": self._build(left_x, left_y, depth - 1),
            "right": self._build(right_x, right_y, depth - 1),
            "p": p,
        }

    def proba(self, x: list[float]) -> float:
        node = self.root
        while "feature" in node:
            node = node["left"] if x[node["feature"]] <= node["threshold"] else node["right"]
        return node["p"]


class KNN:
    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        max_train = int(os.environ.get("THESIS_KNN_MAX_TRAIN", "2200"))
        if len(xs) > max_train:
            positives = [i for i, y in enumerate(ys) if y == 1]
            negatives = [i for i, y in enumerate(ys) if y == 0]
            pos_keep = min(len(positives), max(1, max_train // 3))
            neg_keep = max_train - pos_keep
            if positives:
                pos_step = max(1, len(positives) // pos_keep)
                keep_pos = positives[::pos_step][:pos_keep]
            else:
                keep_pos = []
            neg_step = max(1, len(negatives) // max(1, neg_keep))
            keep_neg = negatives[::neg_step][:neg_keep]
            keep = sorted(set(keep_pos + keep_neg))
            xs = [xs[i] for i in keep]
            ys = [ys[i] for i in keep]
        self.xs, self.mean, self.std = normalize(xs)
        self.ys = ys

    def proba(self, x: list[float]) -> float:
        xn = [(x[i] - self.mean[i]) / self.std[i] for i in range(len(x))]
        distances = [(sum((a - b) ** 2 for a, b in zip(row, xn)), y) for row, y in zip(self.xs, self.ys)]
        k = min(5, len(distances))
        return sum(y for _, y in sorted(distances)[:k]) / max(1, k)


class RandomForest:
    def __init__(self, *, tree_count: int = 9, depth: int = 3, seed: int = 13, inline_bias: float = 0.0):
        self.tree_count = tree_count
        self.depth = depth
        self.seed = seed
        self.inline_bias = inline_bias

    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        random.seed(self.seed)
        self.trees: list[DecisionTree] = []
        dim = len(xs[0])
        for _ in range(self.tree_count):
            idxs = [random.randrange(len(xs)) for _ in range(len(xs))]
            subset = sorted(random.sample(range(dim), max(2, int(math.sqrt(dim)))))
            tree = DecisionTree(depth=self.depth, feature_subset=subset)
            tree.fit([xs[i] for i in idxs], [ys[i] for i in idxs])
            self.trees.append(tree)

    def proba(self, x: list[float]) -> float:
        p = sum(tree.proba(x) for tree in self.trees) / len(self.trees)
        return min(1.0, max(0.0, p + self.inline_bias))


class DeepRandomForest(RandomForest):
    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        random.seed(31)
        self.trees = []
        dim = len(xs[0])
        for _ in range(17):
            idxs = [random.randrange(len(xs)) for _ in range(len(xs))]
            subset = sorted(random.sample(range(dim), max(3, int(math.sqrt(dim)) + 1)))
            tree = DecisionTree(depth=5, feature_subset=subset)
            tree.fit([xs[i] for i in idxs], [ys[i] for i in idxs])
            self.trees.append(tree)


class ConservativeForest:
    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        self.model = DeepRandomForest()
        self.model.fit(xs, ys)

    def proba(self, x: list[float]) -> float:
        # The selected-teacher labels are no-inline heavy. This variant requires
        # stronger evidence before predicting an inline rewrite.
        return 0.78 * self.model.proba(x)


class MLP:
    def fit(self, xs: list[list[float]], ys: list[int]) -> None:
        random.seed(7)
        self.xs, self.mean, self.std = normalize(xs)
        dim = len(xs[0])
        hidden = 8
        self.w1 = [[random.uniform(-0.2, 0.2) for _ in range(hidden)] for _ in range(dim)]
        self.b1 = [0.0] * hidden
        self.w2 = [random.uniform(-0.2, 0.2) for _ in range(hidden)]
        self.b2 = 0.0
        epochs = int(os.environ.get("THESIS_MLP_EPOCHS", "180"))
        for _ in range(epochs):
            for x, y in zip(self.xs, ys):
                h = [math.tanh(self.b1[j] + sum(x[i] * self.w1[i][j] for i in range(dim))) for j in range(hidden)]
                p = sigmoid(self.b2 + sum(h[j] * self.w2[j] for j in range(hidden)))
                err = p - y
                for j in range(hidden):
                    grad_w2 = err * h[j]
                    grad_h = err * self.w2[j] * (1.0 - h[j] * h[j])
                    self.w2[j] -= 0.05 * grad_w2
                    self.b1[j] -= 0.05 * grad_h
                    for i in range(dim):
                        self.w1[i][j] -= 0.05 * grad_h * x[i]
                self.b2 -= 0.05 * err

    def proba(self, x: list[float]) -> float:
        xn = [(x[i] - self.mean[i]) / self.std[i] for i in range(len(x))]
        h = [math.tanh(self.b1[j] + sum(xn[i] * self.w1[i][j] for i in range(len(xn)))) for j in range(len(self.b1))]
        return sigmoid(self.b2 + sum(h[j] * self.w2[j] for j in range(len(h))))


STUDENTS = {
    "logistic_regression": Logistic,
    "decision_tree": DecisionTree,
    "knn": KNN,
    "random_forest": RandomForest,
    "deep_forest": DeepRandomForest,
    "conservative_forest": ConservativeForest,
    "small_mlp": MLP,
}


def module_source_kind(module: str) -> str:
    if module.startswith("real_"):
        return "real_ir"
    if "public_repos" in module:
        return "public_repo"
    if "generated_inlining" in module:
        return "generated"
    return "dcmtk"


def selected_teacher_name(dataset: dict, module: str) -> str:
    selected = dataset.get("selected_teachers", {}).get(module, {})
    return selected.get("teacher", "unknown")


def choose_split_modules(dataset: dict, modules: list[str]) -> tuple[set[str], set[str], dict]:
    groups: dict[tuple[str, str], list[str]] = {}
    for module in modules:
        key = (module_source_kind(module), selected_teacher_name(dataset, module))
        groups.setdefault(key, []).append(module)

    test_modules: set[str] = set()
    group_summary = {}
    for key, group in sorted(groups.items()):
        ordered = sorted(group)
        target = round(len(ordered) * 0.2)
        if len(ordered) >= 3:
            target = max(1, target)
        else:
            target = 0
        if target:
            step = len(ordered) / target
            selected = {ordered[min(len(ordered) - 1, int((i + 0.5) * step))] for i in range(target)}
            test_modules.update(selected)
        else:
            selected = set()
        group_summary[f"{key[0]}::{key[1]}"] = {
            "modules": len(ordered),
            "train_modules": len(ordered) - len(selected),
            "test_modules": len(selected),
        }

    if not test_modules:
        test_modules = {module for i, module in enumerate(modules) if i % 5 == 0}
    if len(test_modules) == len(modules) and len(modules) > 1:
        test_modules = {modules[-1]}
    train_modules = set(modules) - test_modules
    return train_modules, test_modules, group_summary


def classification_metrics(preds: list[int], ys: list[int], idxs: list[int] | None = None) -> dict:
    if idxs is None:
        idxs = list(range(len(ys)))
    tp = sum(1 for i in idxs if preds[i] == 1 and ys[i] == 1)
    tn = sum(1 for i in idxs if preds[i] == 0 and ys[i] == 0)
    fp = sum(1 for i in idxs if preds[i] == 1 and ys[i] == 0)
    fn = sum(1 for i in idxs if preds[i] == 0 and ys[i] == 1)
    total = max(1, len(idxs))
    accuracy = (tp + tn) / total
    precision = tp / (tp + fp) if tp + fp else 0.0
    recall = tp / (tp + fn) if tp + fn else 0.0
    f1 = 2.0 * precision * recall / (precision + recall) if precision + recall else 0.0
    true_negative_rate = tn / (tn + fp) if tn + fp else 0.0
    balanced_accuracy = (recall + true_negative_rate) / 2.0
    return {
        "true_positive": tp,
        "true_negative": tn,
        "false_positive": fp,
        "false_negative": fn,
        "accuracy": accuracy,
        "balanced_accuracy": balanced_accuracy,
        "inline_precision": precision,
        "inline_recall": recall,
        "inline_f1": f1,
    }


def policy_module_sizes(samples: list[dict], by_module: dict[str, list[int]], preds: list[int]) -> dict[str, int]:
    module_sizes = {}
    for module, idxs in by_module.items():
        module_rows = [Callsite(samples[i]["module"], samples[i]["caller"], samples[i]["callee"], "", samples[i]["features"]) for i in idxs]
        module_sizes[module] = simulated_module_size(module_rows, [preds[i] for i in idxs])
    return module_sizes


def train_students(dataset: dict, fixed_split: dict | None = None, output_path=None) -> dict:
    samples = dataset["samples"]
    xs = [s["features"] for s in samples]
    ys = [int(s["label"]) for s in samples]
    by_module: dict[str, list[int]] = {}
    for i, sample in enumerate(samples):
        by_module.setdefault(sample["module"], []).append(i)
    modules = sorted(by_module)
    if fixed_split:
        train_modules = set(fixed_split.get("train_modules", [])) & set(modules)
        test_modules = set(fixed_split.get("test_modules", [])) & set(modules)
        split_groups = {
            "fixed": {
                "modules": len(modules),
                "train_modules": len(train_modules),
                "test_modules": len(test_modules),
            }
        }
    else:
        train_modules, test_modules, split_groups = choose_split_modules(dataset, modules)
    train_idxs = [i for module in sorted(train_modules) for i in by_module[module]]
    test_idxs = [i for module in sorted(test_modules) for i in by_module[module]]
    if not train_idxs:
        train_idxs = list(range(len(samples)))
        test_idxs = []

    always_no_inline_preds = [0 for _ in ys]
    always_no_inline_sizes = policy_module_sizes(samples, by_module, always_no_inline_preds)
    baselines = {
        "always_no_inline_classifier": {
            **classification_metrics(always_no_inline_preds, ys),
            "train_metrics": classification_metrics(always_no_inline_preds, ys, train_idxs),
            "test_metrics": classification_metrics(always_no_inline_preds, ys, test_idxs) if test_idxs else None,
            "teacher_label_match": sum(int(y == 0) for y in ys) / max(1, len(ys)),
            "inline_count": 0,
            "inline_rate": 0.0,
            "module_sizes": always_no_inline_sizes,
            "avg_simulated_size": sum(always_no_inline_sizes.values()) / max(1, len(always_no_inline_sizes)),
        }
    }

    results = {}
    for name, cls in STUDENTS.items():
        model = cls()
        model.fit([xs[i] for i in train_idxs], [ys[i] for i in train_idxs])
        preds = [int(model.proba(x) >= 0.5) for x in xs]
        inline_rate = sum(preds) / max(1, len(preds))
        module_sizes = policy_module_sizes(samples, by_module, preds)
        results[name] = {
            **classification_metrics(preds, ys),
            "train_metrics": classification_metrics(preds, ys, train_idxs),
            "test_metrics": classification_metrics(preds, ys, test_idxs) if test_idxs else None,
            "teacher_label_match": sum(int(p == y) for p, y in zip(preds, ys)) / max(1, len(ys)),
            "train_teacher_label_match": sum(int(preds[i] == ys[i]) for i in train_idxs) / max(1, len(train_idxs)),
            "test_teacher_label_match": sum(int(preds[i] == ys[i]) for i in test_idxs) / max(1, len(test_idxs)) if test_idxs else None,
            "inline_count": sum(preds),
            "inline_rate": inline_rate,
            "predictions": preds,
            "module_sizes": module_sizes,
            "avg_simulated_size": sum(module_sizes.values()) / max(1, len(module_sizes)),
        }

    payload = {
        "split": {
            "train_modules": sorted(train_modules),
            "test_modules": sorted(test_modules),
            "train_samples": len(train_idxs),
            "test_samples": len(test_idxs),
            "strategy": "fixed module split from previous run" if fixed_split else "deterministic stratified module split by source kind and selected teacher",
            "groups": split_groups,
        },
        "baselines": baselines,
        "students": results,
        "best_student": min(results, key=lambda k: results[k]["avg_simulated_size"]),
    }
    target = output_path or (OUT / "student_results.json")
    target.write_text(json.dumps(payload, indent=2), encoding="utf-8")
    return payload
