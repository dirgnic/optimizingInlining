// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=3, argument_pattern=1, body_shape=3, driver_shape=0, size_profile=0. Design space=4096.

static int image_013_tiny_0(int x) { return x - 3; }

static int image_013_branch_0(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_013_medium_0(int x) {
    int y = x + 5;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_1(int x) { return x - 4; }

static int image_013_branch_1(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_013_medium_1(int x) {
    int y = x + 6;
    y = (y << 2) - 1;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_2(int x) { return x - 5; }

static int image_013_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 20;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int image_013_medium_2(int x) {
    int y = x + 7;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_3(int x) { return x - 6; }

static int image_013_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 19;
    return out;
}

static int image_013_medium_3(int x) {
    int y = x + 8;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_4(int x) { return x - 7; }

static int image_013_branch_4(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_013_medium_4(int x) {
    int y = x + 9;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_5(int x) { return x - 8; }

static int image_013_branch_5(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_013_medium_5(int x) {
    int y = x + 10;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_6(int x) { return x - 9; }

static int image_013_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 7;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int image_013_medium_6(int x) {
    int y = x + 11;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int image_013_tiny_7(int x) { return x - 10; }

static int image_013_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 4;
    return out;
}

static int image_013_medium_7(int x) {
    int y = x + 12;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int image_013_large_a(int x) {
    int s = x;
    s += (x & 3) * 3;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 4;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 5;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 6;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int image_013_large_b(int x) {
    int s = x;
    s = (s * 3) + 30;
    s ^= (s >> 1);
    s = (s * 4) + 31;
    s ^= (s >> 2);
    s = (s * 5) + 32;
    s ^= (s >> 3);
    s = (s * 6) + 33;
    s ^= (s >> 1);
    s = (s * 7) + 34;
    s ^= (s >> 2);
    s = (s * 8) + 35;
    s ^= (s >> 3);
    s = (s * 9) + 36;
    s ^= (s >> 1);
    s = (s * 10) + 37;
    s ^= (s >> 2);
    return s;
}

static int image_013_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 16;
    return out;
}

static int image_013_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_013_recursive(x - 2) : image_013_recursive(x - 1);
}

extern "C" int image_013_entry(int x) {
    int total = 0;
    total += image_013_branch_variable(0, 2);
    total += image_013_branch_1(1, 3);
    total += image_013_branch_2(2, 4);
    total += image_013_branch_3(0, 5);
    total += image_013_branch_4(1, 6);
    total += image_013_branch_variable(2, 7);
    total += image_013_branch_6(0, 8);
    total += image_013_branch_7(1, 9);
    total += image_013_branch_variable(2, 10);
    total += image_013_branch_variable(0, 0);
    total += image_013_branch_variable(1, 1);
    total += image_013_branch_variable(2, 2);
    total += image_013_large_a(3);
    total += image_013_large_b(4);
    total += image_013_recursive(2);
    total += image_013_branch_variable(0, 6);
    return total;
}
