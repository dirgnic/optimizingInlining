// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=1, argument_pattern=3, body_shape=1, driver_shape=0, size_profile=0. Design space=4096.

static int matrix_007_tiny_0(int x) { return x ^ 8; }

static int matrix_007_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 12;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int matrix_007_medium_0(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_1(int x) { return x ^ 9; }

static int matrix_007_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 11;
    return out;
}

static int matrix_007_medium_1(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_2(int x) { return x ^ 10; }

static int matrix_007_branch_2(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_007_medium_2(int x) {
    int y = x + 12;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_3(int x) { return x ^ 11; }

static int matrix_007_branch_3(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_007_medium_3(int x) {
    int y = x + 13;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_4(int x) { return x ^ 12; }

static int matrix_007_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int matrix_007_medium_4(int x) {
    int y = x + 3;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_5(int x) { return x ^ 13; }

static int matrix_007_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 15;
    return out;
}

static int matrix_007_medium_5(int x) {
    int y = x + 4;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_6(int x) { return x ^ 14; }

static int matrix_007_branch_6(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_007_medium_6(int x) {
    int y = x + 5;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_tiny_7(int x) { return x ^ 15; }

static int matrix_007_branch_7(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_007_medium_7(int x) {
    int y = x + 6;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_007_large_a(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 7;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_007_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 3;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 3;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_007_branch_variable(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_007_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_007_recursive(x - 2) : matrix_007_recursive(x - 1);
}

extern "C" int matrix_007_entry(int x) {
    int total = 0;
    total += matrix_007_tiny_0(7);
    total += matrix_007_branch_1(x & 3, x & 7);
    total += matrix_007_medium_2(x & 7);
    total += matrix_007_large_b(10);
    total += matrix_007_branch_variable(3, x & 7);
    total += matrix_007_recursive(1);
    total += matrix_007_tiny_6(0);
    total += matrix_007_branch_7(x & 3, x & 7);
    total += matrix_007_medium_0(x & 7);
    total += matrix_007_large_b(3);
    total += matrix_007_branch_variable(1, x & 7);
    total += matrix_007_recursive(3);
    total += matrix_007_tiny_4(6);
    total += matrix_007_branch_5(x & 3, x & 7);
    total += matrix_007_medium_6(x & 7);
    total += matrix_007_large_b(9);
    return total;
}
