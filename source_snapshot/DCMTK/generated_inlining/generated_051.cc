// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=0, argument_pattern=2, body_shape=1, driver_shape=3, size_profile=0. Design space=4096.

static int matrix_051_tiny_0(int x) { return x ^ 52; }

static int matrix_051_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 5;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int matrix_051_medium_0(int x) {
    int y = x + 10;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_1(int x) { return x ^ 53; }

static int matrix_051_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 17;
    return out;
}

static int matrix_051_medium_1(int x) {
    int y = x + 11;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_2(int x) { return x ^ 54; }

static int matrix_051_branch_2(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_051_medium_2(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_3(int x) { return x ^ 55; }

static int matrix_051_branch_3(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_051_medium_3(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_4(int x) { return x ^ 56; }

static int matrix_051_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 9;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int matrix_051_medium_4(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_5(int x) { return x ^ 57; }

static int matrix_051_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 21;
    return out;
}

static int matrix_051_medium_5(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_6(int x) { return x ^ 58; }

static int matrix_051_branch_6(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_051_medium_6(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_tiny_7(int x) { return x ^ 59; }

static int matrix_051_branch_7(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int matrix_051_medium_7(int x) {
    int y = x + 6;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_051_large_a(int x) {
    int s = x;
    for (int i = 0; i < 5; ++i) {
        s += (x ^ i) + 12;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_051_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 3;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_051_branch_variable(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_051_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_051_recursive(x - 2) : matrix_051_recursive(x - 1);
}

extern "C" int matrix_051_kernel(int x) {
    int total = 0;
    total += matrix_051_large_a(0);
    total += matrix_051_large_b(x + 1);
    total += matrix_051_branch_variable(2, 2);
    total += matrix_051_recursive(3);
    total += (matrix_051_large_a(4)) & 255;
    total += matrix_051_large_b(x + 5);
    total += matrix_051_branch_variable(0, 6);
    total += matrix_051_recursive(3);
    total += matrix_051_large_a(1);
    total += (matrix_051_large_b(x + 9)) & 255;
    total += matrix_051_branch_variable(1, 3);
    total += matrix_051_recursive(3);
    total += matrix_051_large_a(5);
    total += matrix_051_large_b(x + 13);
    total += (matrix_051_branch_variable(2, 0)) & 255;
    total += matrix_051_recursive(3);
    return total;
}
