// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=3, argument_pattern=1, body_shape=0, driver_shape=3, size_profile=0. Design space=4096.

static int matrix_047_tiny_0(int x) { return x + 48; }

static int matrix_047_branch_0(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_047_medium_0(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int matrix_047_tiny_1(int x) { return x + 49; }

static int matrix_047_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 19;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int matrix_047_medium_1(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int matrix_047_tiny_2(int x) { return x + 50; }

static int matrix_047_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 14;
    return out;
}

static int matrix_047_medium_2(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int matrix_047_tiny_3(int x) { return x + 51; }

static int matrix_047_branch_3(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_047_medium_3(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int matrix_047_tiny_4(int x) { return x + 52; }

static int matrix_047_branch_4(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_047_medium_4(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int matrix_047_tiny_5(int x) { return x + 53; }

static int matrix_047_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 6;
    case 2: return x * 4;
    default: return x - 4;
    }
}

static int matrix_047_medium_5(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int matrix_047_tiny_6(int x) { return x + 54; }

static int matrix_047_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 18;
    return out;
}

static int matrix_047_medium_6(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int matrix_047_tiny_7(int x) { return x + 55; }

static int matrix_047_branch_7(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_047_medium_7(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int matrix_047_large_a(int x) {
    int s = x;
    s = (s * 3) + 47;
    s ^= (s >> 1);
    s = (s * 4) + 48;
    s ^= (s >> 2);
    s = (s * 5) + 49;
    s ^= (s >> 3);
    s = (s * 6) + 50;
    s ^= (s >> 1);
    s = (s * 7) + 51;
    s ^= (s >> 2);
    s = (s * 8) + 52;
    s ^= (s >> 3);
    s = (s * 9) + 53;
    s ^= (s >> 1);
    s = (s * 10) + 54;
    s ^= (s >> 2);
    return s;
}

static int matrix_047_large_b(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 12;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_047_branch_variable(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_047_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_047_recursive(x - 1);
}

extern "C" int matrix_047_kernel(int x) {
    int total = 0;
    total += matrix_047_branch_variable(0, 3);
    total += matrix_047_large_b(4);
    total += matrix_047_branch_variable(2, 5);
    total += matrix_047_recursive(3);
    total += (matrix_047_large_a(7)) & 255;
    total += matrix_047_branch_variable(2, 8);
    total += matrix_047_branch_variable(0, 9);
    total += matrix_047_recursive(3);
    total += matrix_047_large_a(0);
    total += (matrix_047_large_b(1)) & 255;
    total += matrix_047_branch_variable(1, 2);
    total += matrix_047_recursive(3);
    total += matrix_047_large_a(4);
    total += matrix_047_large_b(5);
    total += (matrix_047_branch_variable(2, 6)) & 255;
    total += matrix_047_branch_variable(0, 7);
    return total;
}
