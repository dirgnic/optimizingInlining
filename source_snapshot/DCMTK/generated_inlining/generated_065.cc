// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=0, argument_pattern=1, body_shape=1, driver_shape=0, size_profile=1. Design space=4096.

static int image_065_tiny_0(int x) { return x ^ 66; }

static int image_065_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 19;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int image_065_medium_0(int x) {
    int y = x + 13;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 3;
    return y;
}

static int image_065_tiny_1(int x) { return x ^ 67; }

static int image_065_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 12;
    return out;
}

static int image_065_medium_1(int x) {
    int y = x + 3;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 4;
    return y;
}

static int image_065_tiny_2(int x) { return x ^ 68; }

static int image_065_branch_2(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_065_medium_2(int x) {
    int y = x + 4;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 5;
    return y;
}

static int image_065_tiny_3(int x) { return x ^ 69; }

static int image_065_branch_3(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_065_medium_3(int x) {
    int y = x + 5;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 6;
    return y;
}

static int image_065_tiny_4(int x) { return x ^ 70; }

static int image_065_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 6;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int image_065_medium_4(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 7;
    return y;
}

static int image_065_tiny_5(int x) { return x ^ 71; }

static int image_065_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 16;
    return out;
}

static int image_065_medium_5(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 1;
    return y;
}

static int image_065_tiny_6(int x) { return x ^ 72; }

static int image_065_branch_6(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_065_medium_6(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 2;
    return y;
}

static int image_065_tiny_7(int x) { return x ^ 73; }

static int image_065_branch_7(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_065_medium_7(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 3;
    return y;
}

static int image_065_large_a(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 0;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int image_065_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_065_branch_variable(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_065_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_065_recursive(x - 2) : image_065_recursive(x - 1);
}

extern "C" int image_065_entry(int x) {
    int total = 0;
    total += image_065_branch_0(0, 10);
    total += image_065_branch_1(1, 0);
    total += image_065_branch_2(2, 1);
    total += image_065_branch_3(0, 2);
    total += image_065_branch_4(1, 3);
    total += image_065_branch_5(2, 4);
    total += image_065_branch_6(0, 5);
    total += image_065_branch_7(1, 6);
    total += image_065_branch_variable(2, 7);
    total += image_065_branch_variable(0, 8);
    total += image_065_branch_variable(1, 9);
    total += image_065_branch_variable(2, 10);
    total += image_065_large_a(0);
    total += image_065_large_b(1);
    total += image_065_recursive(2);
    total += image_065_recursive(3);
    return total;
}
