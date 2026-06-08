// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=1, argument_pattern=3, body_shape=1, driver_shape=2, size_profile=0. Design space=4096.

static int image_037_tiny_0(int x) { return x ^ 38; }

static int image_037_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 8;
    case 2: return x * 4;
    default: return x - 3;
    }
}

static int image_037_medium_0(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_1(int x) { return x ^ 39; }

static int image_037_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 3;
    return out;
}

static int image_037_medium_1(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_2(int x) { return x ^ 40; }

static int image_037_branch_2(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_037_medium_2(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_3(int x) { return x ^ 41; }

static int image_037_branch_3(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_037_medium_3(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_4(int x) { return x ^ 42; }

static int image_037_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 12;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int image_037_medium_4(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_5(int x) { return x ^ 43; }

static int image_037_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 7;
    return out;
}

static int image_037_medium_5(int x) {
    int y = x + 12;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_6(int x) { return x ^ 44; }

static int image_037_branch_6(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_037_medium_6(int x) {
    int y = x + 13;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_037_tiny_7(int x) { return x ^ 45; }

static int image_037_branch_7(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_037_medium_7(int x) {
    int y = x + 3;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_037_large_a(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 11;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_037_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_037_branch_variable(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_037_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_037_recursive(x - 2) : image_037_recursive(x - 1);
}

extern "C" int image_037_step(int x) {
    int total = 0;
    total += image_037_tiny_0(11);
    total += image_037_branch_1(x & 3, x & 7);
    if ((x + 2) & 1) total += image_037_medium_2(x & 7);
    total += image_037_large_b(1);
    total += image_037_branch_variable(1, x & 7);
    if ((x + 5) & 1) total += image_037_recursive(1);
    total += image_037_tiny_6(4);
    total += image_037_branch_7(x & 3, x & 7);
    if ((x + 8) & 1) total += image_037_medium_0(x & 7);
    total += image_037_large_b(7);
    total += image_037_branch_variable(3, x & 7);
    if ((x + 11) & 1) total += image_037_recursive(3);
    total += image_037_tiny_4(10);
    total += image_037_branch_5(x & 3, x & 7);
    if ((x + 14) & 1) total += image_037_medium_6(x & 7);
    total += image_037_large_b(0);
    return total;
}
