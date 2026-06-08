// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=0, argument_pattern=0, body_shape=1, driver_shape=3, size_profile=0. Design space=4096.

static int image_049_tiny_0(int x) { return x ^ 50; }

static int image_049_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 20;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int image_049_medium_0(int x) {
    int y = x + 8;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_1(int x) { return x ^ 51; }

static int image_049_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 15;
    return out;
}

static int image_049_medium_1(int x) {
    int y = x + 9;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_2(int x) { return x ^ 52; }

static int image_049_branch_2(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_049_medium_2(int x) {
    int y = x + 10;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_3(int x) { return x ^ 53; }

static int image_049_branch_3(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_049_medium_3(int x) {
    int y = x + 11;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_4(int x) { return x ^ 54; }

static int image_049_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 7;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int image_049_medium_4(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_5(int x) { return x ^ 55; }

static int image_049_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 19;
    return out;
}

static int image_049_medium_5(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_6(int x) { return x ^ 56; }

static int image_049_branch_6(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_049_medium_6(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_049_tiny_7(int x) { return x ^ 57; }

static int image_049_branch_7(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_049_medium_7(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_049_large_a(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 10;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_049_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 3;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_049_branch_variable(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_049_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_049_recursive(x - 2) : image_049_recursive(x - 1);
}

extern "C" int image_049_kernel(int x) {
    int total = 0;
    total += image_049_branch_0(x & 3, x + 0);
    total += image_049_branch_1(x & 3, x + 1);
    total += image_049_branch_2(x & 3, x + 2);
    total += image_049_branch_3(x & 3, x + 3);
    total += (image_049_branch_4(x & 3, x + 4)) & 255;
    total += image_049_branch_5(x & 3, x + 5);
    total += image_049_branch_6(x & 3, x + 6);
    total += image_049_branch_7(x & 3, x + 7);
    total += image_049_branch_variable(x & 3, x + 8);
    total += (image_049_branch_variable(x & 3, x + 9)) & 255;
    total += image_049_branch_variable(x & 3, x + 10);
    total += image_049_branch_variable(x & 3, x + 11);
    total += image_049_large_a(x + 12);
    total += image_049_large_b(x + 13);
    total += (image_049_recursive(2)) & 255;
    total += image_049_recursive(3);
    return total;
}
