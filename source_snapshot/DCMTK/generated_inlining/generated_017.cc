// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=0, argument_pattern=2, body_shape=0, driver_shape=1, size_profile=0. Design space=4096.

static int image_017_tiny_0(int x) { return x + 18; }

static int image_017_branch_0(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_017_medium_0(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int image_017_tiny_1(int x) { return x + 19; }

static int image_017_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 6;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int image_017_medium_1(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int image_017_tiny_2(int x) { return x + 20; }

static int image_017_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 3;
    return out;
}

static int image_017_medium_2(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int image_017_tiny_3(int x) { return x + 21; }

static int image_017_branch_3(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_017_medium_3(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int image_017_tiny_4(int x) { return x + 22; }

static int image_017_branch_4(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_017_medium_4(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int image_017_tiny_5(int x) { return x + 23; }

static int image_017_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 10;
    case 2: return x * 4;
    default: return x - 2;
    }
}

static int image_017_medium_5(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int image_017_tiny_6(int x) { return x + 24; }

static int image_017_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 7;
    return out;
}

static int image_017_medium_6(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int image_017_tiny_7(int x) { return x + 25; }

static int image_017_branch_7(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_017_medium_7(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int image_017_large_a(int x) {
    int s = x;
    s = (s * 3) + 17;
    s ^= (s >> 1);
    s = (s * 4) + 18;
    s ^= (s >> 2);
    s = (s * 5) + 19;
    s ^= (s >> 3);
    s = (s * 6) + 20;
    s ^= (s >> 1);
    s = (s * 7) + 21;
    s ^= (s >> 2);
    s = (s * 8) + 22;
    s ^= (s >> 3);
    s = (s * 9) + 23;
    s ^= (s >> 1);
    s = (s * 10) + 24;
    s ^= (s >> 2);
    return s;
}

static int image_017_large_b(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 8;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_017_branch_variable(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_017_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_017_recursive(x - 1);
}

extern "C" int image_017_dispatch(int x) {
    int total = 0;
    total += image_017_branch_0(0, 0);
    total += image_017_branch_1(1, x + 1);
    total += image_017_branch_2(2, 2);
    total ^=  image_017_branch_3(0, x + 3);
    total += image_017_branch_4(1, 4);
    total += image_017_branch_5(2, x + 5);
    total += image_017_branch_6(0, 6);
    total ^=  image_017_branch_7(1, x + 7);
    total += image_017_branch_variable(2, 1);
    total += image_017_branch_variable(0, x + 9);
    total += image_017_branch_variable(1, 3);
    total ^=  image_017_branch_variable(2, x + 11);
    total += image_017_large_a(5);
    total += image_017_large_b(x + 13);
    total += image_017_recursive(2);
    total ^=  image_017_recursive(3);
    return total;
}
