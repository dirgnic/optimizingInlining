// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=2, argument_pattern=2, body_shape=3, driver_shape=3, size_profile=0. Design space=4096.

static int matrix_059_tiny_0(int x) { return x - 5; }

static int matrix_059_branch_0(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_059_medium_0(int x) {
    int y = x + 7;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_1(int x) { return x - 6; }

static int matrix_059_branch_1(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_059_medium_1(int x) {
    int y = x + 8;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_2(int x) { return x - 7; }

static int matrix_059_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 15;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int matrix_059_medium_2(int x) {
    int y = x + 9;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_3(int x) { return x - 8; }

static int matrix_059_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 8;
    return out;
}

static int matrix_059_medium_3(int x) {
    int y = x + 10;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_4(int x) { return x - 9; }

static int matrix_059_branch_4(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_059_medium_4(int x) {
    int y = x + 11;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_5(int x) { return x - 10; }

static int matrix_059_branch_5(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_059_medium_5(int x) {
    int y = x + 12;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_6(int x) { return x - 0; }

static int matrix_059_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 19;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int matrix_059_medium_6(int x) {
    int y = x + 13;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int matrix_059_tiny_7(int x) { return x - 1; }

static int matrix_059_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 12;
    return out;
}

static int matrix_059_medium_7(int x) {
    int y = x + 3;
    y = (y << 2) - 1;
    y ^= (x & 15);
    return y;
}

static int matrix_059_large_a(int x) {
    int s = x;
    s += (x & 3) * 5;
    if ((s % 2) == 0) s -= 4;
    else s += 1;
    s += (x & 4) * 6;
    if ((s % 3) == 0) s -= 5;
    else s += 3;
    s += (x & 5) * 7;
    if ((s % 4) == 0) s -= 6;
    else s += 5;
    s += (x & 6) * 8;
    if ((s % 5) == 0) s -= 7;
    else s += 7;
    return s;
}

static int matrix_059_large_b(int x) {
    int s = x;
    s = (s * 3) + 76;
    s ^= (s >> 1);
    s = (s * 4) + 77;
    s ^= (s >> 2);
    s = (s * 5) + 78;
    s ^= (s >> 3);
    s = (s * 6) + 79;
    s ^= (s >> 1);
    s = (s * 7) + 80;
    s ^= (s >> 2);
    s = (s * 8) + 81;
    s ^= (s >> 3);
    s = (s * 9) + 82;
    s ^= (s >> 1);
    s = (s * 10) + 83;
    s ^= (s >> 2);
    return s;
}

static int matrix_059_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 5;
    return out;
}

static int matrix_059_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_059_recursive(x - 2) : matrix_059_recursive(x - 1);
}

extern "C" int matrix_059_kernel(int x) {
    int total = 0;
    total += matrix_059_large_a(0);
    total += matrix_059_large_b(x + 1);
    total += matrix_059_branch_variable(2, 2);
    total += matrix_059_recursive(3);
    total += (matrix_059_large_a(4)) & 255;
    total += matrix_059_large_b(x + 5);
    total += matrix_059_branch_variable(0, 6);
    total += matrix_059_recursive(3);
    total += matrix_059_large_a(1);
    total += (matrix_059_large_b(x + 9)) & 255;
    total += matrix_059_branch_variable(1, 3);
    total += matrix_059_recursive(3);
    total += matrix_059_large_a(5);
    total += matrix_059_large_b(x + 13);
    total += (matrix_059_branch_variable(2, 0)) & 255;
    total += matrix_059_recursive(3);
    return total;
}
