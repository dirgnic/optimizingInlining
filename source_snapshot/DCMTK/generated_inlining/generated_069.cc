// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=1, argument_pattern=1, body_shape=2, driver_shape=0, size_profile=1. Design space=4096.

static int image_069_tiny_0(int x) { return (x * 2) + 0; }

static int image_069_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 15;
    return out;
}

static int image_069_medium_0(int x) {
    int y = x + 6;
    y = (y * 6) ^ (y >> 1);
    y += 1;
    y += (x & 3) * 7;
    return y;
}

static int image_069_tiny_1(int x) { return (x * 3) + 1; }

static int image_069_branch_1(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_069_medium_1(int x) {
    int y = x + 7;
    y = (y * 2) ^ (y >> 1);
    y += 2;
    y += (x & 3) * 1;
    return y;
}

static int image_069_tiny_2(int x) { return (x * 4) + 2; }

static int image_069_branch_2(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_069_medium_2(int x) {
    int y = x + 8;
    y = (y * 3) ^ (y >> 1);
    y += 3;
    y += (x & 3) * 2;
    return y;
}

static int image_069_tiny_3(int x) { return (x * 5) + 3; }

static int image_069_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 9;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int image_069_medium_3(int x) {
    int y = x + 9;
    y = (y * 4) ^ (y >> 1);
    y += 4;
    y += (x & 3) * 3;
    return y;
}

static int image_069_tiny_4(int x) { return (x * 6) + 4; }

static int image_069_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 19;
    return out;
}

static int image_069_medium_4(int x) {
    int y = x + 10;
    y = (y * 5) ^ (y >> 1);
    y += 5;
    y += (x & 3) * 4;
    return y;
}

static int image_069_tiny_5(int x) { return (x * 2) + 5; }

static int image_069_branch_5(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_069_medium_5(int x) {
    int y = x + 11;
    y = (y * 6) ^ (y >> 1);
    y += 6;
    y += (x & 3) * 5;
    return y;
}

static int image_069_tiny_6(int x) { return (x * 3) + 6; }

static int image_069_branch_6(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int image_069_medium_6(int x) {
    int y = x + 12;
    y = (y * 2) ^ (y >> 1);
    y += 7;
    y += (x & 3) * 6;
    return y;
}

static int image_069_tiny_7(int x) { return (x * 4) + 0; }

static int image_069_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 13;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int image_069_medium_7(int x) {
    int y = x + 13;
    y = (y * 3) ^ (y >> 1);
    y += 8;
    y += (x & 3) * 7;
    return y;
}

static int image_069_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 6;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_069_large_b(int x) {
    int s = x;
    s += (x & 3) * 10;
    if ((s % 2) == 0) s -= 1;
    else s += 1;
    s += (x & 4) * 11;
    if ((s % 3) == 0) s -= 2;
    else s += 3;
    s += (x & 5) * 12;
    if ((s % 4) == 0) s -= 3;
    else s += 5;
    s += (x & 6) * 13;
    if ((s % 5) == 0) s -= 4;
    else s += 7;
    s += (x & 7) * 14;
    if ((s % 6) == 0) s -= 5;
    else s += 9;
    s += (x & 8) * 15;
    if ((s % 7) == 0) s -= 6;
    else s += 11;
    s += (x & 9) * 16;
    if ((s % 8) == 0) s -= 7;
    else s += 13;
    return s;
}

static int image_069_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 6;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int image_069_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_069_recursive(x - 1);
}

extern "C" int image_069_entry(int x) {
    int total = 0;
    total += image_069_tiny_0(3);
    total += image_069_branch_1(1, 4);
    total += image_069_medium_2(5);
    total += image_069_large_b(6);
    total += image_069_branch_variable(1, 7);
    total += image_069_recursive(1);
    total += image_069_tiny_6(9);
    total += image_069_branch_7(1, 10);
    total += image_069_medium_0(0);
    total += image_069_large_b(1);
    total += image_069_branch_variable(1, 2);
    total += image_069_recursive(3);
    total += image_069_tiny_4(4);
    total += image_069_branch_5(1, 5);
    total += image_069_medium_6(6);
    total += image_069_large_b(7);
    return total;
}
