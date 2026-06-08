// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=1, argument_pattern=1, body_shape=2, driver_shape=2, size_profile=0. Design space=4096.

static int matrix_039_tiny_0(int x) { return (x * 2) + 5; }

static int matrix_039_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 4;
    return out;
}

static int matrix_039_medium_0(int x) {
    int y = x + 9;
    y = (y * 6) ^ (y >> 1);
    y += 5;
    return y;
}

static int matrix_039_tiny_1(int x) { return (x * 3) + 6; }

static int matrix_039_branch_1(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_039_medium_1(int x) {
    int y = x + 10;
    y = (y * 2) ^ (y >> 1);
    y += 6;
    return y;
}

static int matrix_039_tiny_2(int x) { return (x * 4) + 0; }

static int matrix_039_branch_2(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_039_medium_2(int x) {
    int y = x + 11;
    y = (y * 3) ^ (y >> 1);
    y += 7;
    return y;
}

static int matrix_039_tiny_3(int x) { return (x * 5) + 1; }

static int matrix_039_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 13;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int matrix_039_medium_3(int x) {
    int y = x + 12;
    y = (y * 4) ^ (y >> 1);
    y += 8;
    return y;
}

static int matrix_039_tiny_4(int x) { return (x * 6) + 2; }

static int matrix_039_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 8;
    return out;
}

static int matrix_039_medium_4(int x) {
    int y = x + 13;
    y = (y * 5) ^ (y >> 1);
    y += 9;
    return y;
}

static int matrix_039_tiny_5(int x) { return (x * 2) + 3; }

static int matrix_039_branch_5(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_039_medium_5(int x) {
    int y = x + 3;
    y = (y * 6) ^ (y >> 1);
    y += 10;
    return y;
}

static int matrix_039_tiny_6(int x) { return (x * 3) + 4; }

static int matrix_039_branch_6(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_039_medium_6(int x) {
    int y = x + 4;
    y = (y * 2) ^ (y >> 1);
    y += 11;
    return y;
}

static int matrix_039_tiny_7(int x) { return (x * 4) + 5; }

static int matrix_039_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 17;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int matrix_039_medium_7(int x) {
    int y = x + 5;
    y = (y * 3) ^ (y >> 1);
    y += 12;
    return y;
}

static int matrix_039_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_039_large_b(int x) {
    int s = x;
    s += (x & 3) * 2;
    if ((s % 2) == 0) s -= 1;
    else s += 1;
    s += (x & 4) * 3;
    if ((s % 3) == 0) s -= 2;
    else s += 3;
    s += (x & 5) * 4;
    if ((s % 4) == 0) s -= 3;
    else s += 5;
    s += (x & 6) * 5;
    if ((s % 5) == 0) s -= 4;
    else s += 7;
    return s;
}

static int matrix_039_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 10;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int matrix_039_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_039_recursive(x - 1);
}

extern "C" int matrix_039_step(int x) {
    int total = 0;
    total += matrix_039_tiny_0(6);
    total += matrix_039_branch_1(1, 7);
    if ((x + 2) & 1) total += matrix_039_medium_2(8);
    total += matrix_039_large_b(9);
    total += matrix_039_branch_variable(1, 10);
    if ((x + 5) & 1) total += matrix_039_recursive(1);
    total += matrix_039_tiny_6(1);
    total += matrix_039_branch_7(1, 2);
    if ((x + 8) & 1) total += matrix_039_medium_0(3);
    total += matrix_039_large_b(4);
    total += matrix_039_branch_variable(1, 5);
    if ((x + 11) & 1) total += matrix_039_recursive(3);
    total += matrix_039_tiny_4(7);
    total += matrix_039_branch_5(1, 8);
    if ((x + 14) & 1) total += matrix_039_medium_6(9);
    total += matrix_039_large_b(10);
    return total;
}
