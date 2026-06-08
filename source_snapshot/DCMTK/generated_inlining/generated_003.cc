// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=0, argument_pattern=3, body_shape=0, driver_shape=0, size_profile=0. Design space=4096.

static int matrix_003_tiny_0(int x) { return x + 4; }

static int matrix_003_branch_0(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int matrix_003_medium_0(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int matrix_003_tiny_1(int x) { return x + 5; }

static int matrix_003_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 9;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int matrix_003_medium_1(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int matrix_003_tiny_2(int x) { return x + 6; }

static int matrix_003_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 8;
    return out;
}

static int matrix_003_medium_2(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int matrix_003_tiny_3(int x) { return x + 7; }

static int matrix_003_branch_3(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_003_medium_3(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int matrix_003_tiny_4(int x) { return x + 8; }

static int matrix_003_branch_4(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_003_medium_4(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int matrix_003_tiny_5(int x) { return x + 9; }

static int matrix_003_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 13;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int matrix_003_medium_5(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int matrix_003_tiny_6(int x) { return x + 10; }

static int matrix_003_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 12;
    return out;
}

static int matrix_003_medium_6(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int matrix_003_tiny_7(int x) { return x + 11; }

static int matrix_003_branch_7(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_003_medium_7(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int matrix_003_large_a(int x) {
    int s = x;
    s = (s * 3) + 3;
    s ^= (s >> 1);
    s = (s * 4) + 4;
    s ^= (s >> 2);
    s = (s * 5) + 5;
    s ^= (s >> 3);
    s = (s * 6) + 6;
    s ^= (s >> 1);
    s = (s * 7) + 7;
    s ^= (s >> 2);
    s = (s * 8) + 8;
    s ^= (s >> 3);
    s = (s * 9) + 9;
    s ^= (s >> 1);
    s = (s * 10) + 10;
    s ^= (s >> 2);
    return s;
}

static int matrix_003_large_b(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 7;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_003_branch_variable(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_003_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_003_recursive(x - 1);
}

extern "C" int matrix_003_entry(int x) {
    int total = 0;
    total += matrix_003_large_a(3);
    total += matrix_003_large_b(x & 7);
    total += matrix_003_branch_variable(1, x & 7);
    total += matrix_003_recursive(3);
    total += matrix_003_large_a(x & 7);
    total += matrix_003_large_b(x & 7);
    total += matrix_003_branch_variable(1, 9);
    total += matrix_003_recursive(3);
    total += matrix_003_large_a(x & 7);
    total += matrix_003_large_b(12);
    total += matrix_003_branch_variable(1, x & 7);
    total += matrix_003_recursive(3);
    total += matrix_003_large_a(2);
    total += matrix_003_large_b(x & 7);
    total += matrix_003_branch_variable(1, x & 7);
    total += matrix_003_recursive(3);
    return total;
}
