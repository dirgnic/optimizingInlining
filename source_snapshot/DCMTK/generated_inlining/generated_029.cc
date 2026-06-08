// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=3, argument_pattern=2, body_shape=3, driver_shape=1, size_profile=0. Design space=4096.

static int image_029_tiny_0(int x) { return x - 8; }

static int image_029_branch_0(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_029_medium_0(int x) {
    int y = x + 10;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_1(int x) { return x - 9; }

static int image_029_branch_1(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_029_medium_1(int x) {
    int y = x + 11;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_2(int x) { return x - 10; }

static int image_029_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 19;
    case 2: return x * 4;
    default: return x - 4;
    }
}

static int image_029_medium_2(int x) {
    int y = x + 12;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_3(int x) { return x - 0; }

static int image_029_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 16;
    return out;
}

static int image_029_medium_3(int x) {
    int y = x + 13;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_4(int x) { return x - 1; }

static int image_029_branch_4(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_029_medium_4(int x) {
    int y = x + 3;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_5(int x) { return x - 2; }

static int image_029_branch_5(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_029_medium_5(int x) {
    int y = x + 4;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_6(int x) { return x - 3; }

static int image_029_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 6;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int image_029_medium_6(int x) {
    int y = x + 5;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int image_029_tiny_7(int x) { return x - 4; }

static int image_029_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 20;
    return out;
}

static int image_029_medium_7(int x) {
    int y = x + 6;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int image_029_large_a(int x) {
    int s = x;
    s += (x & 3) * 8;
    if ((s % 2) == 0) s -= 4;
    else s += 1;
    s += (x & 4) * 9;
    if ((s % 3) == 0) s -= 5;
    else s += 3;
    s += (x & 5) * 10;
    if ((s % 4) == 0) s -= 6;
    else s += 5;
    s += (x & 6) * 11;
    if ((s % 5) == 0) s -= 7;
    else s += 7;
    return s;
}

static int image_029_large_b(int x) {
    int s = x;
    s = (s * 3) + 46;
    s ^= (s >> 1);
    s = (s * 4) + 47;
    s ^= (s >> 2);
    s = (s * 5) + 48;
    s ^= (s >> 3);
    s = (s * 6) + 49;
    s ^= (s >> 1);
    s = (s * 7) + 50;
    s ^= (s >> 2);
    s = (s * 8) + 51;
    s ^= (s >> 3);
    s = (s * 9) + 52;
    s ^= (s >> 1);
    s = (s * 10) + 53;
    s ^= (s >> 2);
    return s;
}

static int image_029_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 13;
    return out;
}

static int image_029_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + image_029_recursive(x - 2) : image_029_recursive(x - 1);
}

extern "C" int image_029_dispatch(int x) {
    int total = 0;
    total += image_029_branch_variable(0, 0);
    total += image_029_branch_1(1, x + 1);
    total += image_029_branch_2(2, 2);
    total ^=  image_029_branch_3(0, x + 3);
    total += image_029_branch_4(1, 4);
    total += image_029_branch_variable(2, x + 5);
    total += image_029_branch_6(0, 6);
    total ^=  image_029_branch_7(1, x + 7);
    total += image_029_branch_variable(2, 1);
    total += image_029_branch_variable(0, x + 9);
    total += image_029_branch_variable(1, 3);
    total ^=  image_029_branch_variable(2, x + 11);
    total += image_029_large_a(5);
    total += image_029_large_b(x + 13);
    total += image_029_recursive(2);
    total ^=  image_029_branch_variable(0, x + 15);
    return total;
}
