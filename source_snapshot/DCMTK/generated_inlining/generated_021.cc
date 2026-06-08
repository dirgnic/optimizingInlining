// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=1, argument_pattern=2, body_shape=1, driver_shape=1, size_profile=0. Design space=4096.

static int image_021_tiny_0(int x) { return x ^ 22; }

static int image_021_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 9;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int image_021_medium_0(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_1(int x) { return x ^ 23; }

static int image_021_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 6;
    return out;
}

static int image_021_medium_1(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_2(int x) { return x ^ 24; }

static int image_021_branch_2(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_021_medium_2(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_3(int x) { return x ^ 25; }

static int image_021_branch_3(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_021_medium_3(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_4(int x) { return x ^ 26; }

static int image_021_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 13;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int image_021_medium_4(int x) {
    int y = x + 6;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_5(int x) { return x ^ 27; }

static int image_021_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 10;
    return out;
}

static int image_021_medium_5(int x) {
    int y = x + 7;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_6(int x) { return x ^ 28; }

static int image_021_branch_6(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_021_medium_6(int x) {
    int y = x + 8;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int image_021_tiny_7(int x) { return x ^ 29; }

static int image_021_branch_7(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_021_medium_7(int x) {
    int y = x + 9;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int image_021_large_a(int x) {
    int s = x;
    for (int i = 0; i < 5; ++i) {
        s += (x ^ i) + 8;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_021_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 3;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_021_branch_variable(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_021_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_021_recursive(x - 2) : image_021_recursive(x - 1);
}

extern "C" int image_021_dispatch(int x) {
    int total = 0;
    total += image_021_tiny_0(0);
    total += image_021_branch_1(1, x + 1);
    total += image_021_medium_2(2);
    total ^=  image_021_large_b(x + 3);
    total += image_021_branch_variable(1, 4);
    total += image_021_recursive(1);
    total += image_021_tiny_6(6);
    total ^=  image_021_branch_7(1, x + 7);
    total += image_021_medium_0(1);
    total += image_021_large_b(x + 9);
    total += image_021_branch_variable(1, 3);
    total ^=  image_021_recursive(3);
    total += image_021_tiny_4(5);
    total += image_021_branch_5(1, x + 13);
    total += image_021_medium_6(0);
    total ^=  image_021_large_b(x + 15);
    return total;
}
