// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=3, call_mix=3, argument_pattern=2, body_shape=0, driver_shape=0, size_profile=1. Design space=4096.

static int matrix_063_tiny_0(int x) { return x + 64; }

static int matrix_063_branch_0(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int matrix_063_medium_0(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 0;
    y += (x & 3) * 1;
    return y;
}

static int matrix_063_tiny_1(int x) { return x + 65; }

static int matrix_063_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 18;
    case 2: return x * 4;
    default: return x - 2;
    }
}

static int matrix_063_medium_1(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 1;
    y += (x & 3) * 2;
    return y;
}

static int matrix_063_tiny_2(int x) { return x + 66; }

static int matrix_063_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 11;
    return out;
}

static int matrix_063_medium_2(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 2;
    y += (x & 3) * 3;
    return y;
}

static int matrix_063_tiny_3(int x) { return x + 67; }

static int matrix_063_branch_3(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_063_medium_3(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 3;
    y += (x & 3) * 4;
    return y;
}

static int matrix_063_tiny_4(int x) { return x + 68; }

static int matrix_063_branch_4(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int matrix_063_medium_4(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 4;
    y += (x & 3) * 5;
    return y;
}

static int matrix_063_tiny_5(int x) { return x + 69; }

static int matrix_063_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 5;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int matrix_063_medium_5(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 5;
    y += (x & 3) * 6;
    return y;
}

static int matrix_063_tiny_6(int x) { return x + 70; }

static int matrix_063_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 15;
    return out;
}

static int matrix_063_medium_6(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 6;
    y += (x & 3) * 7;
    return y;
}

static int matrix_063_tiny_7(int x) { return x + 71; }

static int matrix_063_branch_7(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_063_medium_7(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 7;
    y += (x & 3) * 1;
    return y;
}

static int matrix_063_large_a(int x) {
    int s = x;
    s = (s * 3) + 63;
    s ^= (s >> 1);
    s = (s * 4) + 64;
    s ^= (s >> 2);
    s = (s * 5) + 65;
    s ^= (s >> 3);
    s = (s * 6) + 66;
    s ^= (s >> 1);
    s = (s * 7) + 67;
    s ^= (s >> 2);
    s = (s * 8) + 68;
    s ^= (s >> 3);
    s = (s * 9) + 69;
    s ^= (s >> 1);
    s = (s * 10) + 70;
    s ^= (s >> 2);
    s = (s * 11) + 71;
    s ^= (s >> 3);
    s = (s * 12) + 72;
    s ^= (s >> 1);
    s = (s * 13) + 73;
    s ^= (s >> 2);
    s = (s * 14) + 74;
    s ^= (s >> 3);
    s = (s * 15) + 75;
    s ^= (s >> 1);
    return s;
}

static int matrix_063_large_b(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 2;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int matrix_063_branch_variable(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int matrix_063_recursive(int x) {
    if (x <= 0) return 0;
    return x + matrix_063_recursive(x - 1);
}

extern "C" int matrix_063_entry(int x) {
    int total = 0;
    total += matrix_063_branch_variable(0, 0);
    total += matrix_063_large_b(x + 1);
    total += matrix_063_branch_variable(2, 2);
    total += matrix_063_recursive(3);
    total += matrix_063_large_a(4);
    total += matrix_063_branch_variable(2, x + 5);
    total += matrix_063_branch_variable(0, 6);
    total += matrix_063_recursive(3);
    total += matrix_063_large_a(1);
    total += matrix_063_large_b(x + 9);
    total += matrix_063_branch_variable(1, 3);
    total += matrix_063_recursive(3);
    total += matrix_063_large_a(5);
    total += matrix_063_large_b(x + 13);
    total += matrix_063_branch_variable(2, 0);
    total += matrix_063_branch_variable(0, x + 15);
    return total;
}
