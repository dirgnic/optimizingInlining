// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=2, argument_pattern=0, body_shape=3, driver_shape=3, size_profile=0. Design space=4096.

static int image_057_tiny_0(int x) { return x - 3; }

static int image_057_branch_0(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_057_medium_0(int x) {
    int y = x + 5;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_1(int x) { return x - 4; }

static int image_057_branch_1(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_057_medium_1(int x) {
    int y = x + 6;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_2(int x) { return x - 5; }

static int image_057_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 13;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int image_057_medium_2(int x) {
    int y = x + 7;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_3(int x) { return x - 6; }

static int image_057_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 6;
    return out;
}

static int image_057_medium_3(int x) {
    int y = x + 8;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_4(int x) { return x - 7; }

static int image_057_branch_4(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_057_medium_4(int x) {
    int y = x + 9;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_5(int x) { return x - 8; }

static int image_057_branch_5(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_057_medium_5(int x) {
    int y = x + 10;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_6(int x) { return x - 9; }

static int image_057_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 17;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int image_057_medium_6(int x) {
    int y = x + 11;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int image_057_tiny_7(int x) { return x - 10; }

static int image_057_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 10;
    return out;
}

static int image_057_medium_7(int x) {
    int y = x + 12;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int image_057_large_a(int x) {
    int s = x;
    s += (x & 3) * 3;
    if ((s % 2) == 0) s -= 2;
    else s += 1;
    s += (x & 4) * 4;
    if ((s % 3) == 0) s -= 3;
    else s += 3;
    s += (x & 5) * 5;
    if ((s % 4) == 0) s -= 4;
    else s += 5;
    s += (x & 6) * 6;
    if ((s % 5) == 0) s -= 5;
    else s += 7;
    return s;
}

static int image_057_large_b(int x) {
    int s = x;
    s = (s * 3) + 74;
    s ^= (s >> 1);
    s = (s * 4) + 75;
    s ^= (s >> 2);
    s = (s * 5) + 76;
    s ^= (s >> 3);
    s = (s * 6) + 77;
    s ^= (s >> 1);
    s = (s * 7) + 78;
    s ^= (s >> 2);
    s = (s * 8) + 79;
    s ^= (s >> 3);
    s = (s * 9) + 80;
    s ^= (s >> 1);
    s = (s * 10) + 81;
    s ^= (s >> 2);
    return s;
}

static int image_057_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 3;
    return out;
}

static int image_057_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_057_recursive(x - 2) : image_057_recursive(x - 1);
}

extern "C" int image_057_kernel(int x) {
    int total = 0;
    total += image_057_branch_0(x & 3, x + 0);
    total += image_057_branch_1(x & 3, x + 1);
    total += image_057_branch_2(x & 3, x + 2);
    total += image_057_recursive(3);
    total += (image_057_branch_4(x & 3, x + 4)) & 255;
    total += image_057_branch_5(x & 3, x + 5);
    total += image_057_branch_6(x & 3, x + 6);
    total += image_057_recursive(3);
    total += image_057_branch_variable(x & 3, x + 8);
    total += (image_057_branch_variable(x & 3, x + 9)) & 255;
    total += image_057_branch_variable(x & 3, x + 10);
    total += image_057_recursive(3);
    total += image_057_large_a(x + 12);
    total += image_057_large_b(x + 13);
    total += (image_057_recursive(2)) & 255;
    total += image_057_recursive(3);
    return total;
}
