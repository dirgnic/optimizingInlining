// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=0, argument_pattern=0, body_shape=1, driver_shape=1, size_profile=0. Design space=4096.

static int matrix_019_tiny_0(int x) { return x ^ 20; }

static int matrix_019_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 7;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int matrix_019_medium_0(int x) {
    int y = x + 11;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_1(int x) { return x ^ 21; }

static int matrix_019_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 4;
    return out;
}

static int matrix_019_medium_1(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_2(int x) { return x ^ 22; }

static int matrix_019_branch_2(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_019_medium_2(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_3(int x) { return x ^ 23; }

static int matrix_019_branch_3(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_019_medium_3(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_4(int x) { return x ^ 24; }

static int matrix_019_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 11;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int matrix_019_medium_4(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_5(int x) { return x ^ 25; }

static int matrix_019_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 8;
    return out;
}

static int matrix_019_medium_5(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_6(int x) { return x ^ 26; }

static int matrix_019_branch_6(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_019_medium_6(int x) {
    int y = x + 6;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_tiny_7(int x) { return x ^ 27; }

static int matrix_019_branch_7(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_019_medium_7(int x) {
    int y = x + 7;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int matrix_019_large_a(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 6;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_019_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 3;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 1;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_019_branch_variable(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_019_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_019_recursive(x - 2) : matrix_019_recursive(x - 1);
}

extern "C" int matrix_019_dispatch(int x) {
    int total = 0;
    total += matrix_019_large_a(x + 0);
    total += matrix_019_large_b(x + 1);
    total += matrix_019_branch_variable(x & 3, x + 2);
    total ^=  matrix_019_recursive(3);
    total += matrix_019_large_a(x + 4);
    total += matrix_019_large_b(x + 5);
    total += matrix_019_branch_variable(x & 3, x + 6);
    total ^=  matrix_019_recursive(3);
    total += matrix_019_large_a(x + 8);
    total += matrix_019_large_b(x + 9);
    total += matrix_019_branch_variable(x & 3, x + 10);
    total ^=  matrix_019_recursive(3);
    total += matrix_019_large_a(x + 12);
    total += matrix_019_large_b(x + 13);
    total += matrix_019_branch_variable(x & 3, x + 14);
    total ^=  matrix_019_recursive(3);
    return total;
}
