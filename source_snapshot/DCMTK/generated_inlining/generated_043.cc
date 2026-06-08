// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=2, argument_pattern=1, body_shape=3, driver_shape=2, size_profile=0. Design space=4096.

static int matrix_043_tiny_0(int x) { return x - 0; }

static int matrix_043_branch_0(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_043_medium_0(int x) {
    int y = x + 13;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_1(int x) { return x - 1; }

static int matrix_043_branch_1(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int matrix_043_medium_1(int x) {
    int y = x + 3;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_2(int x) { return x - 2; }

static int matrix_043_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 16;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int matrix_043_medium_2(int x) {
    int y = x + 4;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_3(int x) { return x - 3; }

static int matrix_043_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 11;
    return out;
}

static int matrix_043_medium_3(int x) {
    int y = x + 5;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_4(int x) { return x - 4; }

static int matrix_043_branch_4(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_043_medium_4(int x) {
    int y = x + 6;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_5(int x) { return x - 5; }

static int matrix_043_branch_5(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int matrix_043_medium_5(int x) {
    int y = x + 7;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_6(int x) { return x - 6; }

static int matrix_043_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 20;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int matrix_043_medium_6(int x) {
    int y = x + 8;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int matrix_043_tiny_7(int x) { return x - 7; }

static int matrix_043_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 15;
    return out;
}

static int matrix_043_medium_7(int x) {
    int y = x + 9;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int matrix_043_large_a(int x) {
    int s = x;
    s += (x & 3) * 11;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 12;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 13;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 14;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int matrix_043_large_b(int x) {
    int s = x;
    s = (s * 3) + 60;
    s ^= (s >> 1);
    s = (s * 4) + 61;
    s ^= (s >> 2);
    s = (s * 5) + 62;
    s ^= (s >> 3);
    s = (s * 6) + 63;
    s ^= (s >> 1);
    s = (s * 7) + 64;
    s ^= (s >> 2);
    s = (s * 8) + 65;
    s ^= (s >> 3);
    s = (s * 9) + 66;
    s ^= (s >> 1);
    s = (s * 10) + 67;
    s ^= (s >> 2);
    return s;
}

static int matrix_043_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 8;
    return out;
}

static int matrix_043_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + matrix_043_recursive(x - 2) : matrix_043_recursive(x - 1);
}

extern "C" int matrix_043_step(int x) {
    int total = 0;
    total += matrix_043_large_a(10);
    total += matrix_043_large_b(0);
    if ((x + 2) & 1) total += matrix_043_branch_variable(2, 1);
    total += matrix_043_recursive(3);
    total += matrix_043_large_a(3);
    if ((x + 5) & 1) total += matrix_043_large_b(4);
    total += matrix_043_branch_variable(0, 5);
    total += matrix_043_recursive(3);
    if ((x + 8) & 1) total += matrix_043_large_a(7);
    total += matrix_043_large_b(8);
    total += matrix_043_branch_variable(1, 9);
    if ((x + 11) & 1) total += matrix_043_recursive(3);
    total += matrix_043_large_a(0);
    total += matrix_043_large_b(1);
    if ((x + 14) & 1) total += matrix_043_branch_variable(2, 2);
    total += matrix_043_recursive(3);
    return total;
}
