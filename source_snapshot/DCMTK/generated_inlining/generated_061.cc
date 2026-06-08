// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=3, argument_pattern=0, body_shape=0, driver_shape=0, size_profile=1. Design space=4096.

static int image_061_tiny_0(int x) { return x + 62; }

static int image_061_branch_0(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_061_medium_0(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 7;
    y += (x & 3) * 6;
    return y;
}

static int image_061_tiny_1(int x) { return x + 63; }

static int image_061_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int image_061_medium_1(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 8;
    y += (x & 3) * 7;
    return y;
}

static int image_061_tiny_2(int x) { return x + 64; }

static int image_061_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 9;
    return out;
}

static int image_061_medium_2(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 0;
    y += (x & 3) * 1;
    return y;
}

static int image_061_tiny_3(int x) { return x + 65; }

static int image_061_branch_3(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_061_medium_3(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 1;
    y += (x & 3) * 2;
    return y;
}

static int image_061_tiny_4(int x) { return x + 66; }

static int image_061_branch_4(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_061_medium_4(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 2;
    y += (x & 3) * 3;
    return y;
}

static int image_061_tiny_5(int x) { return x + 67; }

static int image_061_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 20;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int image_061_medium_5(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 3;
    y += (x & 3) * 4;
    return y;
}

static int image_061_tiny_6(int x) { return x + 68; }

static int image_061_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 13;
    return out;
}

static int image_061_medium_6(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 4;
    y += (x & 3) * 5;
    return y;
}

static int image_061_tiny_7(int x) { return x + 69; }

static int image_061_branch_7(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_061_medium_7(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 5;
    y += (x & 3) * 6;
    return y;
}

static int image_061_large_a(int x) {
    int s = x;
    s = (s * 3) + 61;
    s ^= (s >> 1);
    s = (s * 4) + 62;
    s ^= (s >> 2);
    s = (s * 5) + 63;
    s ^= (s >> 3);
    s = (s * 6) + 64;
    s ^= (s >> 1);
    s = (s * 7) + 65;
    s ^= (s >> 2);
    s = (s * 8) + 66;
    s ^= (s >> 3);
    s = (s * 9) + 67;
    s ^= (s >> 1);
    s = (s * 10) + 68;
    s ^= (s >> 2);
    s = (s * 11) + 69;
    s ^= (s >> 3);
    s = (s * 12) + 70;
    s ^= (s >> 1);
    s = (s * 13) + 71;
    s ^= (s >> 2);
    s = (s * 14) + 72;
    s ^= (s >> 3);
    s = (s * 15) + 73;
    s ^= (s >> 1);
    return s;
}

static int image_061_large_b(int x) {
    int s = x;
    for (int i = 0; i < 9; ++i) {
        s += (x ^ i) + 0;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_061_branch_variable(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_061_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_061_recursive(x - 1);
}

extern "C" int image_061_entry(int x) {
    int total = 0;
    total += image_061_branch_variable(x & 3, x + 0);
    total += image_061_branch_1(x & 3, x + 1);
    total += image_061_branch_2(x & 3, x + 2);
    total += image_061_branch_3(x & 3, x + 3);
    total += image_061_branch_4(x & 3, x + 4);
    total += image_061_branch_variable(x & 3, x + 5);
    total += image_061_branch_6(x & 3, x + 6);
    total += image_061_branch_7(x & 3, x + 7);
    total += image_061_branch_variable(x & 3, x + 8);
    total += image_061_branch_variable(x & 3, x + 9);
    total += image_061_branch_variable(x & 3, x + 10);
    total += image_061_branch_variable(x & 3, x + 11);
    total += image_061_large_a(x + 12);
    total += image_061_large_b(x + 13);
    total += image_061_recursive(2);
    total += image_061_branch_variable(x & 3, x + 15);
    return total;
}
