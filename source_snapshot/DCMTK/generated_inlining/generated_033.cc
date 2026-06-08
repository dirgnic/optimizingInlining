// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=0, argument_pattern=3, body_shape=0, driver_shape=2, size_profile=0. Design space=4096.

static int image_033_tiny_0(int x) { return x + 34; }

static int image_033_branch_0(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_033_medium_0(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int image_033_tiny_1(int x) { return x + 35; }

static int image_033_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 5;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int image_033_medium_1(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int image_033_tiny_2(int x) { return x + 36; }

static int image_033_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 19;
    return out;
}

static int image_033_medium_2(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int image_033_tiny_3(int x) { return x + 37; }

static int image_033_branch_3(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_033_medium_3(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int image_033_tiny_4(int x) { return x + 38; }

static int image_033_branch_4(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_033_medium_4(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int image_033_tiny_5(int x) { return x + 39; }

static int image_033_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 9;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int image_033_medium_5(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int image_033_tiny_6(int x) { return x + 40; }

static int image_033_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 4;
    return out;
}

static int image_033_medium_6(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int image_033_tiny_7(int x) { return x + 41; }

static int image_033_branch_7(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_033_medium_7(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int image_033_large_a(int x) {
    int s = x;
    s = (s * 3) + 33;
    s ^= (s >> 1);
    s = (s * 4) + 34;
    s ^= (s >> 2);
    s = (s * 5) + 35;
    s ^= (s >> 3);
    s = (s * 6) + 36;
    s ^= (s >> 1);
    s = (s * 7) + 37;
    s ^= (s >> 2);
    s = (s * 8) + 38;
    s ^= (s >> 3);
    s = (s * 9) + 39;
    s ^= (s >> 1);
    s = (s * 10) + 40;
    s ^= (s >> 2);
    return s;
}

static int image_033_large_b(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 11;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_033_branch_variable(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_033_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_033_recursive(x - 1);
}

extern "C" int image_033_step(int x) {
    int total = 0;
    total += image_033_branch_0(1, 7);
    total += image_033_branch_1(x & 3, x & 7);
    if ((x + 2) & 1) total += image_033_branch_2(3, x & 7);
    total += image_033_branch_3(x & 3, 10);
    total += image_033_branch_4(1, x & 7);
    if ((x + 5) & 1) total += image_033_branch_5(x & 3, x & 7);
    total += image_033_branch_6(3, 0);
    total += image_033_branch_7(x & 3, x & 7);
    if ((x + 8) & 1) total += image_033_branch_variable(1, x & 7);
    total += image_033_branch_variable(x & 3, 3);
    total += image_033_branch_variable(3, x & 7);
    if ((x + 11) & 1) total += image_033_branch_variable(x & 3, x & 7);
    total += image_033_large_a(6);
    total += image_033_large_b(x & 7);
    if ((x + 14) & 1) total += image_033_recursive(2);
    total += image_033_recursive(3);
    return total;
}
