// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=0, argument_pattern=1, body_shape=0, driver_shape=0, size_profile=0. Design space=4096.

static int image_001_tiny_0(int x) { return x + 2; }

static int image_001_branch_0(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_001_medium_0(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int image_001_tiny_1(int x) { return x + 3; }

static int image_001_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 7;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int image_001_medium_1(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int image_001_tiny_2(int x) { return x + 4; }

static int image_001_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 6;
    return out;
}

static int image_001_medium_2(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int image_001_tiny_3(int x) { return x + 5; }

static int image_001_branch_3(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_001_medium_3(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int image_001_tiny_4(int x) { return x + 6; }

static int image_001_branch_4(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_001_medium_4(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int image_001_tiny_5(int x) { return x + 7; }

static int image_001_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 11;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int image_001_medium_5(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int image_001_tiny_6(int x) { return x + 8; }

static int image_001_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 10;
    return out;
}

static int image_001_medium_6(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int image_001_tiny_7(int x) { return x + 9; }

static int image_001_branch_7(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_001_medium_7(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int image_001_large_a(int x) {
    int s = x;
    s = (s * 3) + 1;
    s ^= (s >> 1);
    s = (s * 4) + 2;
    s ^= (s >> 2);
    s = (s * 5) + 3;
    s ^= (s >> 3);
    s = (s * 6) + 4;
    s ^= (s >> 1);
    s = (s * 7) + 5;
    s ^= (s >> 2);
    s = (s * 8) + 6;
    s ^= (s >> 3);
    s = (s * 9) + 7;
    s ^= (s >> 1);
    s = (s * 10) + 8;
    s ^= (s >> 2);
    return s;
}

static int image_001_large_b(int x) {
    int s = x;
    for (int i = 0; i < 7; ++i) {
        s += (x ^ i) + 5;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_001_branch_variable(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_001_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_001_recursive(x - 1);
}

extern "C" int image_001_entry(int x) {
    int total = 0;
    total += image_001_branch_0(0, 1);
    total += image_001_branch_1(1, 2);
    total += image_001_branch_2(2, 3);
    total += image_001_branch_3(0, 4);
    total += image_001_branch_4(1, 5);
    total += image_001_branch_5(2, 6);
    total += image_001_branch_6(0, 7);
    total += image_001_branch_7(1, 8);
    total += image_001_branch_variable(2, 9);
    total += image_001_branch_variable(0, 10);
    total += image_001_branch_variable(1, 0);
    total += image_001_branch_variable(2, 1);
    total += image_001_large_a(2);
    total += image_001_large_b(3);
    total += image_001_recursive(2);
    total += image_001_recursive(3);
    return total;
}
