// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=2, argument_pattern=3, body_shape=2, driver_shape=0, size_profile=0. Design space=4096.

static int matrix_011_tiny_0(int x) { return (x * 4) + 5; }

static int matrix_011_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 14;
    return out;
}

static int matrix_011_medium_0(int x) {
    int y = x + 3;
    y = (y * 3) ^ (y >> 1);
    y += 11;
    return y;
}

static int matrix_011_tiny_1(int x) { return (x * 5) + 6; }

static int matrix_011_branch_1(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_011_medium_1(int x) {
    int y = x + 4;
    y = (y * 4) ^ (y >> 1);
    y += 12;
    return y;
}

static int matrix_011_tiny_2(int x) { return (x * 6) + 0; }

static int matrix_011_branch_2(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int matrix_011_medium_2(int x) {
    int y = x + 5;
    y = (y * 5) ^ (y >> 1);
    y += 13;
    return y;
}

static int matrix_011_tiny_3(int x) { return (x * 2) + 1; }

static int matrix_011_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 19;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int matrix_011_medium_3(int x) {
    int y = x + 6;
    y = (y * 6) ^ (y >> 1);
    y += 14;
    return y;
}

static int matrix_011_tiny_4(int x) { return (x * 3) + 2; }

static int matrix_011_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 18;
    return out;
}

static int matrix_011_medium_4(int x) {
    int y = x + 7;
    y = (y * 2) ^ (y >> 1);
    y += 15;
    return y;
}

static int matrix_011_tiny_5(int x) { return (x * 4) + 3; }

static int matrix_011_branch_5(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_011_medium_5(int x) {
    int y = x + 8;
    y = (y * 3) ^ (y >> 1);
    y += 16;
    return y;
}

static int matrix_011_tiny_6(int x) { return (x * 5) + 4; }

static int matrix_011_branch_6(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_011_medium_6(int x) {
    int y = x + 9;
    y = (y * 4) ^ (y >> 1);
    y += 0;
    return y;
}

static int matrix_011_tiny_7(int x) { return (x * 6) + 5; }

static int matrix_011_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 6;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int matrix_011_medium_7(int x) {
    int y = x + 10;
    y = (y * 5) ^ (y >> 1);
    y += 1;
    return y;
}

static int matrix_011_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int matrix_011_large_b(int x) {
    int s = x;
    s += (x & 3) * 7;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 8;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 9;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 10;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int matrix_011_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int matrix_011_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_011_recursive(x - 1);
}

extern "C" int matrix_011_entry(int x) {
    int total = 0;
    total += matrix_011_large_a(11);
    total += matrix_011_large_b(x & 7);
    total += matrix_011_branch_variable(1, x & 7);
    total += matrix_011_recursive(3);
    total += matrix_011_large_a(x & 7);
    total += matrix_011_large_b(x & 7);
    total += matrix_011_branch_variable(1, 4);
    total += matrix_011_recursive(3);
    total += matrix_011_large_a(x & 7);
    total += matrix_011_large_b(7);
    total += matrix_011_branch_variable(1, x & 7);
    total += matrix_011_recursive(3);
    total += matrix_011_large_a(10);
    total += matrix_011_large_b(x & 7);
    total += matrix_011_branch_variable(1, x & 7);
    total += matrix_011_recursive(3);
    return total;
}
