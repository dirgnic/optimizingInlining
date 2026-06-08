// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=1, argument_pattern=0, body_shape=2, driver_shape=3, size_profile=0. Design space=4096.

static int image_053_tiny_0(int x) { return (x * 6) + 5; }

static int image_053_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 18;
    return out;
}

static int image_053_medium_0(int x) {
    int y = x + 12;
    y = (y * 5) ^ (y >> 1);
    y += 2;
    return y;
}

static int image_053_tiny_1(int x) { return (x * 2) + 6; }

static int image_053_branch_1(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_053_medium_1(int x) {
    int y = x + 13;
    y = (y * 6) ^ (y >> 1);
    y += 3;
    return y;
}

static int image_053_tiny_2(int x) { return (x * 3) + 0; }

static int image_053_branch_2(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_053_medium_2(int x) {
    int y = x + 3;
    y = (y * 2) ^ (y >> 1);
    y += 4;
    return y;
}

static int image_053_tiny_3(int x) { return (x * 4) + 1; }

static int image_053_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 10;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int image_053_medium_3(int x) {
    int y = x + 4;
    y = (y * 3) ^ (y >> 1);
    y += 5;
    return y;
}

static int image_053_tiny_4(int x) { return (x * 5) + 2; }

static int image_053_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 3;
    return out;
}

static int image_053_medium_4(int x) {
    int y = x + 5;
    y = (y * 4) ^ (y >> 1);
    y += 6;
    return y;
}

static int image_053_tiny_5(int x) { return (x * 6) + 3; }

static int image_053_branch_5(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_053_medium_5(int x) {
    int y = x + 6;
    y = (y * 5) ^ (y >> 1);
    y += 7;
    return y;
}

static int image_053_tiny_6(int x) { return (x * 2) + 4; }

static int image_053_branch_6(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int image_053_medium_6(int x) {
    int y = x + 7;
    y = (y * 6) ^ (y >> 1);
    y += 8;
    return y;
}

static int image_053_tiny_7(int x) { return (x * 3) + 5; }

static int image_053_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 14;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int image_053_medium_7(int x) {
    int y = x + 8;
    y = (y * 2) ^ (y >> 1);
    y += 9;
    return y;
}

static int image_053_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_053_large_b(int x) {
    int s = x;
    s += (x & 3) * 5;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 6;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 7;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 8;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int image_053_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 7;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int image_053_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_053_recursive(x - 1);
}

extern "C" int image_053_kernel(int x) {
    int total = 0;
    total += image_053_tiny_0(x + 0);
    total += image_053_branch_1(x & 3, x + 1);
    total += image_053_medium_2(x + 2);
    total += image_053_large_b(x + 3);
    total += (image_053_branch_variable(x & 3, x + 4)) & 255;
    total += image_053_recursive(1);
    total += image_053_tiny_6(x + 6);
    total += image_053_branch_7(x & 3, x + 7);
    total += image_053_medium_0(x + 8);
    total += (image_053_large_b(x + 9)) & 255;
    total += image_053_branch_variable(x & 3, x + 10);
    total += image_053_recursive(3);
    total += image_053_tiny_4(x + 12);
    total += image_053_branch_5(x & 3, x + 13);
    total += (image_053_medium_6(x + 14)) & 255;
    total += image_053_large_b(x + 15);
    return total;
}
