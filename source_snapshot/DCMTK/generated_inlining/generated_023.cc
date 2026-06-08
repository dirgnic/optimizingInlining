// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=1, argument_pattern=0, body_shape=2, driver_shape=1, size_profile=0. Design space=4096.

static int matrix_023_tiny_0(int x) { return (x * 6) + 3; }

static int matrix_023_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 7;
    return out;
}

static int matrix_023_medium_0(int x) {
    int y = x + 4;
    y = (y * 5) ^ (y >> 1);
    y += 6;
    return y;
}

static int matrix_023_tiny_1(int x) { return (x * 2) + 4; }

static int matrix_023_branch_1(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_023_medium_1(int x) {
    int y = x + 5;
    y = (y * 6) ^ (y >> 1);
    y += 7;
    return y;
}

static int matrix_023_tiny_2(int x) { return (x * 3) + 5; }

static int matrix_023_branch_2(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_023_medium_2(int x) {
    int y = x + 6;
    y = (y * 2) ^ (y >> 1);
    y += 8;
    return y;
}

static int matrix_023_tiny_3(int x) { return (x * 4) + 6; }

static int matrix_023_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 14;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int matrix_023_medium_3(int x) {
    int y = x + 7;
    y = (y * 3) ^ (y >> 1);
    y += 9;
    return y;
}

static int matrix_023_tiny_4(int x) { return (x * 5) + 0; }

static int matrix_023_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 11;
    return out;
}

static int matrix_023_medium_4(int x) {
    int y = x + 8;
    y = (y * 4) ^ (y >> 1);
    y += 10;
    return y;
}

static int matrix_023_tiny_5(int x) { return (x * 6) + 1; }

static int matrix_023_branch_5(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_023_medium_5(int x) {
    int y = x + 9;
    y = (y * 5) ^ (y >> 1);
    y += 11;
    return y;
}

static int matrix_023_tiny_6(int x) { return (x * 2) + 2; }

static int matrix_023_branch_6(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_023_medium_6(int x) {
    int y = x + 10;
    y = (y * 6) ^ (y >> 1);
    y += 12;
    return y;
}

static int matrix_023_tiny_7(int x) { return (x * 3) + 3; }

static int matrix_023_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 18;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int matrix_023_medium_7(int x) {
    int y = x + 11;
    y = (y * 2) ^ (y >> 1);
    y += 13;
    return y;
}

static int matrix_023_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 2;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_023_large_b(int x) {
    int s = x;
    s += (x & 3) * 8;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 9;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 10;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 11;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int matrix_023_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 11;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int matrix_023_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_023_recursive(x - 1);
}

extern "C" int matrix_023_dispatch(int x) {
    int total = 0;
    total += matrix_023_tiny_0(x + 0);
    total += matrix_023_branch_1(x & 3, x + 1);
    total += matrix_023_medium_2(x + 2);
    total ^=  matrix_023_large_b(x + 3);
    total += matrix_023_branch_variable(x & 3, x + 4);
    total += matrix_023_recursive(1);
    total += matrix_023_tiny_6(x + 6);
    total ^=  matrix_023_branch_7(x & 3, x + 7);
    total += matrix_023_medium_0(x + 8);
    total += matrix_023_large_b(x + 9);
    total += matrix_023_branch_variable(x & 3, x + 10);
    total ^=  matrix_023_recursive(3);
    total += matrix_023_tiny_4(x + 12);
    total += matrix_023_branch_5(x & 3, x + 13);
    total += matrix_023_medium_6(x + 14);
    total ^=  matrix_023_large_b(x + 15);
    return total;
}
