// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=3, argument_pattern=3, body_shape=3, driver_shape=2, size_profile=0. Design space=4096.

static int image_045_tiny_0(int x) { return x - 2; }

static int image_045_branch_0(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_045_medium_0(int x) {
    int y = x + 4;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_1(int x) { return x - 3; }

static int image_045_branch_1(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_045_medium_1(int x) {
    int y = x + 5;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_2(int x) { return x - 4; }

static int image_045_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 18;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int image_045_medium_2(int x) {
    int y = x + 6;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_3(int x) { return x - 5; }

static int image_045_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 13;
    return out;
}

static int image_045_medium_3(int x) {
    int y = x + 7;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_4(int x) { return x - 6; }

static int image_045_branch_4(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_045_medium_4(int x) {
    int y = x + 8;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_5(int x) { return x - 7; }

static int image_045_branch_5(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_045_medium_5(int x) {
    int y = x + 9;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_6(int x) { return x - 8; }

static int image_045_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 5;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int image_045_medium_6(int x) {
    int y = x + 10;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int image_045_tiny_7(int x) { return x - 9; }

static int image_045_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 17;
    return out;
}

static int image_045_medium_7(int x) {
    int y = x + 11;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int image_045_large_a(int x) {
    int s = x;
    s += (x & 3) * 2;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 3;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 4;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 5;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int image_045_large_b(int x) {
    int s = x;
    s = (s * 3) + 62;
    s ^= (s >> 1);
    s = (s * 4) + 63;
    s ^= (s >> 2);
    s = (s * 5) + 64;
    s ^= (s >> 3);
    s = (s * 6) + 65;
    s ^= (s >> 1);
    s = (s * 7) + 66;
    s ^= (s >> 2);
    s = (s * 8) + 67;
    s ^= (s >> 3);
    s = (s * 9) + 68;
    s ^= (s >> 1);
    s = (s * 10) + 69;
    s ^= (s >> 2);
    return s;
}

static int image_045_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 10;
    return out;
}

static int image_045_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_045_recursive(x - 2) : image_045_recursive(x - 1);
}

extern "C" int image_045_step(int x) {
    int total = 0;
    total += image_045_branch_variable(1, 6);
    total += image_045_branch_1(x & 3, x & 7);
    if ((x + 2) & 1) total += image_045_branch_2(3, x & 7);
    total += image_045_branch_3(x & 3, 9);
    total += image_045_branch_4(1, x & 7);
    if ((x + 5) & 1) total += image_045_branch_variable(x & 3, x & 7);
    total += image_045_branch_6(3, 12);
    total += image_045_branch_7(x & 3, x & 7);
    if ((x + 8) & 1) total += image_045_branch_variable(1, x & 7);
    total += image_045_branch_variable(x & 3, 2);
    total += image_045_branch_variable(3, x & 7);
    if ((x + 11) & 1) total += image_045_branch_variable(x & 3, x & 7);
    total += image_045_large_a(5);
    total += image_045_large_b(x & 7);
    if ((x + 14) & 1) total += image_045_recursive(2);
    total += image_045_branch_variable(x & 3, 8);
    return total;
}
