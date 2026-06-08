// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=0, argument_pattern=3, body_shape=1, driver_shape=0, size_profile=1. Design space=4096.

static int matrix_067_tiny_0(int x) { return x ^ 68; }

static int matrix_067_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 21;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int matrix_067_medium_0(int x) {
    int y = x + 4;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 5;
    return y;
}

static int matrix_067_tiny_1(int x) { return x ^ 69; }

static int matrix_067_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 14;
    return out;
}

static int matrix_067_medium_1(int x) {
    int y = x + 5;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 6;
    return y;
}

static int matrix_067_tiny_2(int x) { return x ^ 70; }

static int matrix_067_branch_2(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_067_medium_2(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 7;
    return y;
}

static int matrix_067_tiny_3(int x) { return x ^ 71; }

static int matrix_067_branch_3(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_067_medium_3(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 1;
    return y;
}

static int matrix_067_tiny_4(int x) { return x ^ 72; }

static int matrix_067_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 8;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int matrix_067_medium_4(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 2;
    return y;
}

static int matrix_067_tiny_5(int x) { return x ^ 73; }

static int matrix_067_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 18;
    return out;
}

static int matrix_067_medium_5(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 3;
    return y;
}

static int matrix_067_tiny_6(int x) { return x ^ 74; }

static int matrix_067_branch_6(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_067_medium_6(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 4;
    return y;
}

static int matrix_067_tiny_7(int x) { return x ^ 75; }

static int matrix_067_branch_7(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_067_medium_7(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 5;
    return y;
}

static int matrix_067_large_a(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 2;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_067_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 0;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_067_branch_variable(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_067_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_067_recursive(x - 2) : matrix_067_recursive(x - 1);
}

extern "C" int matrix_067_entry(int x) {
    int total = 0;
    total += matrix_067_large_a(2);
    total += matrix_067_large_b(x & 7);
    total += matrix_067_branch_variable(1, x & 7);
    total += matrix_067_recursive(3);
    total += matrix_067_large_a(x & 7);
    total += matrix_067_large_b(x & 7);
    total += matrix_067_branch_variable(1, 8);
    total += matrix_067_recursive(3);
    total += matrix_067_large_a(x & 7);
    total += matrix_067_large_b(11);
    total += matrix_067_branch_variable(1, x & 7);
    total += matrix_067_recursive(3);
    total += matrix_067_large_a(1);
    total += matrix_067_large_b(x & 7);
    total += matrix_067_branch_variable(1, x & 7);
    total += matrix_067_recursive(3);
    return total;
}
