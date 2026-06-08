// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=1, argument_pattern=1, body_shape=1, driver_shape=0, size_profile=0. Design space=4096.

static int image_005_tiny_0(int x) { return x ^ 6; }

static int image_005_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 10;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int image_005_medium_0(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_1(int x) { return x ^ 7; }

static int image_005_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 9;
    return out;
}

static int image_005_medium_1(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_2(int x) { return x ^ 8; }

static int image_005_branch_2(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_005_medium_2(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_3(int x) { return x ^ 9; }

static int image_005_branch_3(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_005_medium_3(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_4(int x) { return x ^ 10; }

static int image_005_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 14;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int image_005_medium_4(int x) {
    int y = x + 12;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_5(int x) { return x ^ 11; }

static int image_005_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 13;
    return out;
}

static int image_005_medium_5(int x) {
    int y = x + 13;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_6(int x) { return x ^ 12; }

static int image_005_branch_6(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_005_medium_6(int x) {
    int y = x + 3;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_005_tiny_7(int x) { return x ^ 13; }

static int image_005_branch_7(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_005_medium_7(int x) {
    int y = x + 4;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_005_large_a(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 5;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_005_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 1;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_005_branch_variable(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_005_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_005_recursive(x - 2) : image_005_recursive(x - 1);
}

extern "C" int image_005_entry(int x) {
    int total = 0;
    total += image_005_tiny_0(5);
    total += image_005_branch_1(1, 6);
    total += image_005_medium_2(7);
    total += image_005_large_b(8);
    total += image_005_branch_variable(1, 9);
    total += image_005_recursive(1);
    total += image_005_tiny_6(0);
    total += image_005_branch_7(1, 1);
    total += image_005_medium_0(2);
    total += image_005_large_b(3);
    total += image_005_branch_variable(1, 4);
    total += image_005_recursive(3);
    total += image_005_tiny_4(6);
    total += image_005_branch_5(1, 7);
    total += image_005_medium_6(8);
    total += image_005_large_b(9);
    return total;
}
