// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=3, argument_pattern=0, body_shape=0, driver_shape=2, size_profile=0. Design space=4096.

static int matrix_031_tiny_0(int x) { return x + 32; }

static int matrix_031_branch_0(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int matrix_031_medium_0(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int matrix_031_tiny_1(int x) { return x + 33; }

static int matrix_031_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 20;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int matrix_031_medium_1(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int matrix_031_tiny_2(int x) { return x + 34; }

static int matrix_031_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 17;
    return out;
}

static int matrix_031_medium_2(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int matrix_031_tiny_3(int x) { return x + 35; }

static int matrix_031_branch_3(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_031_medium_3(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int matrix_031_tiny_4(int x) { return x + 36; }

static int matrix_031_branch_4(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int matrix_031_medium_4(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int matrix_031_tiny_5(int x) { return x + 37; }

static int matrix_031_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 7;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int matrix_031_medium_5(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int matrix_031_tiny_6(int x) { return x + 38; }

static int matrix_031_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 21;
    return out;
}

static int matrix_031_medium_6(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int matrix_031_tiny_7(int x) { return x + 39; }

static int matrix_031_branch_7(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_031_medium_7(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int matrix_031_large_a(int x) {
    int s = x;
    s = (s * 3) + 31;
    s ^= (s >> 1);
    s = (s * 4) + 32;
    s ^= (s >> 2);
    s = (s * 5) + 33;
    s ^= (s >> 3);
    s = (s * 6) + 34;
    s ^= (s >> 1);
    s = (s * 7) + 35;
    s ^= (s >> 2);
    s = (s * 8) + 36;
    s ^= (s >> 3);
    s = (s * 9) + 37;
    s ^= (s >> 1);
    s = (s * 10) + 38;
    s ^= (s >> 2);
    return s;
}

static int matrix_031_large_b(int x) {
    int s = x;
    for (int i = 0; i < 7; ++i) {
        s += (x ^ i) + 9;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_031_branch_variable(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_031_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_031_recursive(x - 1);
}

extern "C" int matrix_031_step(int x) {
    int total = 0;
    total += matrix_031_branch_variable(x & 3, x + 0);
    total += matrix_031_large_b(x + 1);
    if ((x + 2) & 1) total += matrix_031_branch_variable(x & 3, x + 2);
    total += matrix_031_recursive(3);
    total += matrix_031_large_a(x + 4);
    if ((x + 5) & 1) total += matrix_031_branch_variable(x & 3, x + 5);
    total += matrix_031_branch_variable(x & 3, x + 6);
    total += matrix_031_recursive(3);
    if ((x + 8) & 1) total += matrix_031_large_a(x + 8);
    total += matrix_031_large_b(x + 9);
    total += matrix_031_branch_variable(x & 3, x + 10);
    if ((x + 11) & 1) total += matrix_031_recursive(3);
    total += matrix_031_large_a(x + 12);
    total += matrix_031_large_b(x + 13);
    if ((x + 14) & 1) total += matrix_031_branch_variable(x & 3, x + 14);
    total += matrix_031_branch_variable(x & 3, x + 15);
    return total;
}
