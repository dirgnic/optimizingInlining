// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=2, argument_pattern=3, body_shape=2, driver_shape=2, size_profile=0. Design space=4096.

static int image_041_tiny_0(int x) { return (x * 4) + 0; }

static int image_041_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 6;
    return out;
}

static int image_041_medium_0(int x) {
    int y = x + 11;
    y = (y * 3) ^ (y >> 1);
    y += 7;
    return y;
}

static int image_041_tiny_1(int x) { return (x * 5) + 1; }

static int image_041_branch_1(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_041_medium_1(int x) {
    int y = x + 12;
    y = (y * 4) ^ (y >> 1);
    y += 8;
    return y;
}

static int image_041_tiny_2(int x) { return (x * 6) + 2; }

static int image_041_branch_2(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int image_041_medium_2(int x) {
    int y = x + 13;
    y = (y * 5) ^ (y >> 1);
    y += 9;
    return y;
}

static int image_041_tiny_3(int x) { return (x * 2) + 3; }

static int image_041_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 15;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int image_041_medium_3(int x) {
    int y = x + 3;
    y = (y * 6) ^ (y >> 1);
    y += 10;
    return y;
}

static int image_041_tiny_4(int x) { return (x * 3) + 4; }

static int image_041_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 10;
    return out;
}

static int image_041_medium_4(int x) {
    int y = x + 4;
    y = (y * 2) ^ (y >> 1);
    y += 11;
    return y;
}

static int image_041_tiny_5(int x) { return (x * 4) + 5; }

static int image_041_branch_5(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_041_medium_5(int x) {
    int y = x + 5;
    y = (y * 3) ^ (y >> 1);
    y += 12;
    return y;
}

static int image_041_tiny_6(int x) { return (x * 5) + 6; }

static int image_041_branch_6(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_041_medium_6(int x) {
    int y = x + 6;
    y = (y * 4) ^ (y >> 1);
    y += 13;
    return y;
}

static int image_041_tiny_7(int x) { return (x * 6) + 0; }

static int image_041_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 19;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int image_041_medium_7(int x) {
    int y = x + 7;
    y = (y * 5) ^ (y >> 1);
    y += 14;
    return y;
}

static int image_041_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 6;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_041_large_b(int x) {
    int s = x;
    s += (x & 3) * 4;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 5;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 6;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 7;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int image_041_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 12;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int image_041_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_041_recursive(x - 1);
}

extern "C" int image_041_step(int x) {
    int total = 0;
    total += image_041_branch_0(1, 2);
    total += image_041_branch_1(x & 3, x & 7);
    if ((x + 2) & 1) total += image_041_branch_2(3, x & 7);
    total += image_041_recursive(3);
    total += image_041_branch_4(1, x & 7);
    if ((x + 5) & 1) total += image_041_branch_5(x & 3, x & 7);
    total += image_041_branch_6(3, 8);
    total += image_041_recursive(3);
    if ((x + 8) & 1) total += image_041_branch_variable(1, x & 7);
    total += image_041_branch_variable(x & 3, 11);
    total += image_041_branch_variable(3, x & 7);
    if ((x + 11) & 1) total += image_041_recursive(3);
    total += image_041_large_a(1);
    total += image_041_large_b(x & 7);
    if ((x + 14) & 1) total += image_041_recursive(2);
    total += image_041_recursive(3);
    return total;
}
