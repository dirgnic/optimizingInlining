// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=3, argument_pattern=3, body_shape=3, driver_shape=0, size_profile=0. Design space=4096.

static int matrix_015_tiny_0(int x) { return x - 5; }

static int matrix_015_branch_0(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_015_medium_0(int x) {
    int y = x + 7;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_1(int x) { return x - 6; }

static int matrix_015_branch_1(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_015_medium_1(int x) {
    int y = x + 8;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_2(int x) { return x - 7; }

static int matrix_015_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 5;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int matrix_015_medium_2(int x) {
    int y = x + 9;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_3(int x) { return x - 8; }

static int matrix_015_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 21;
    return out;
}

static int matrix_015_medium_3(int x) {
    int y = x + 10;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_4(int x) { return x - 9; }

static int matrix_015_branch_4(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_015_medium_4(int x) {
    int y = x + 11;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_5(int x) { return x - 10; }

static int matrix_015_branch_5(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_015_medium_5(int x) {
    int y = x + 12;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_6(int x) { return x - 0; }

static int matrix_015_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 9;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int matrix_015_medium_6(int x) {
    int y = x + 13;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int matrix_015_tiny_7(int x) { return x - 1; }

static int matrix_015_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 6;
    return out;
}

static int matrix_015_medium_7(int x) {
    int y = x + 3;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int matrix_015_large_a(int x) {
    int s = x;
    s += (x & 3) * 5;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 6;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 7;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 8;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int matrix_015_large_b(int x) {
    int s = x;
    s = (s * 3) + 32;
    s ^= (s >> 1);
    s = (s * 4) + 33;
    s ^= (s >> 2);
    s = (s * 5) + 34;
    s ^= (s >> 3);
    s = (s * 6) + 35;
    s ^= (s >> 1);
    s = (s * 7) + 36;
    s ^= (s >> 2);
    s = (s * 8) + 37;
    s ^= (s >> 3);
    s = (s * 9) + 38;
    s ^= (s >> 1);
    s = (s * 10) + 39;
    s ^= (s >> 2);
    return s;
}

static int matrix_015_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 18;
    return out;
}

static int matrix_015_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_015_recursive(x - 2) : matrix_015_recursive(x - 1);
}

extern "C" int matrix_015_entry(int x) {
    int total = 0;
    total += matrix_015_branch_variable(3, 2);
    total += matrix_015_large_b(x & 7);
    total += matrix_015_branch_variable(1, x & 7);
    total += matrix_015_recursive(3);
    total += matrix_015_large_a(x & 7);
    total += matrix_015_branch_variable(x & 3, x & 7);
    total += matrix_015_branch_variable(1, 8);
    total += matrix_015_recursive(3);
    total += matrix_015_large_a(x & 7);
    total += matrix_015_large_b(11);
    total += matrix_015_branch_variable(1, x & 7);
    total += matrix_015_recursive(3);
    total += matrix_015_large_a(1);
    total += matrix_015_large_b(x & 7);
    total += matrix_015_branch_variable(1, x & 7);
    total += matrix_015_branch_variable(x & 3, 4);
    return total;
}
