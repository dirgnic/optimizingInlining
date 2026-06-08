// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=1, argument_pattern=2, body_shape=2, driver_shape=3, size_profile=0. Design space=4096.

static int matrix_055_tiny_0(int x) { return (x * 3) + 0; }

static int matrix_055_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 20;
    return out;
}

static int matrix_055_medium_0(int x) {
    int y = x + 3;
    y = (y * 2) ^ (y >> 1);
    y += 4;
    return y;
}

static int matrix_055_tiny_1(int x) { return (x * 4) + 1; }

static int matrix_055_branch_1(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_055_medium_1(int x) {
    int y = x + 4;
    y = (y * 3) ^ (y >> 1);
    y += 5;
    return y;
}

static int matrix_055_tiny_2(int x) { return (x * 5) + 2; }

static int matrix_055_branch_2(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_055_medium_2(int x) {
    int y = x + 5;
    y = (y * 4) ^ (y >> 1);
    y += 6;
    return y;
}

static int matrix_055_tiny_3(int x) { return (x * 6) + 3; }

static int matrix_055_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 12;
    case 2: return x * 4;
    default: return x - 3;
    }
}

static int matrix_055_medium_3(int x) {
    int y = x + 6;
    y = (y * 5) ^ (y >> 1);
    y += 7;
    return y;
}

static int matrix_055_tiny_4(int x) { return (x * 2) + 4; }

static int matrix_055_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 5;
    return out;
}

static int matrix_055_medium_4(int x) {
    int y = x + 7;
    y = (y * 6) ^ (y >> 1);
    y += 8;
    return y;
}

static int matrix_055_tiny_5(int x) { return (x * 3) + 5; }

static int matrix_055_branch_5(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_055_medium_5(int x) {
    int y = x + 8;
    y = (y * 2) ^ (y >> 1);
    y += 9;
    return y;
}

static int matrix_055_tiny_6(int x) { return (x * 4) + 6; }

static int matrix_055_branch_6(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_055_medium_6(int x) {
    int y = x + 9;
    y = (y * 3) ^ (y >> 1);
    y += 10;
    return y;
}

static int matrix_055_tiny_7(int x) { return (x * 5) + 0; }

static int matrix_055_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int matrix_055_medium_7(int x) {
    int y = x + 10;
    y = (y * 4) ^ (y >> 1);
    y += 11;
    return y;
}

static int matrix_055_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 6;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_055_large_b(int x) {
    int s = x;
    s += (x & 3) * 7;
    if ((s % 2) == 0) s -= 2;
    else s += 1;
    s += (x & 4) * 8;
    if ((s % 3) == 0) s -= 3;
    else s += 3;
    s += (x & 5) * 9;
    if ((s % 4) == 0) s -= 4;
    else s += 5;
    s += (x & 6) * 10;
    if ((s % 5) == 0) s -= 5;
    else s += 7;
    return s;
}

static int matrix_055_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 9;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int matrix_055_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_055_recursive(x - 1);
}

extern "C" int matrix_055_kernel(int x) {
    int total = 0;
    total += matrix_055_tiny_0(0);
    total += matrix_055_branch_1(1, x + 1);
    total += matrix_055_medium_2(2);
    total += matrix_055_large_b(x + 3);
    total += (matrix_055_branch_variable(1, 4)) & 255;
    total += matrix_055_recursive(1);
    total += matrix_055_tiny_6(6);
    total += matrix_055_branch_7(1, x + 7);
    total += matrix_055_medium_0(1);
    total += (matrix_055_large_b(x + 9)) & 255;
    total += matrix_055_branch_variable(1, 3);
    total += matrix_055_recursive(3);
    total += matrix_055_tiny_4(5);
    total += matrix_055_branch_5(1, x + 13);
    total += (matrix_055_medium_6(0)) & 255;
    total += matrix_055_large_b(x + 15);
    return total;
}
