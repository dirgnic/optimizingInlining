// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=1, call_mix=2, argument_pattern=2, body_shape=2, driver_shape=1, size_profile=0. Design space=4096.

static int image_025_tiny_0(int x) { return (x * 3) + 5; }

static int image_025_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 9;
    return out;
}

static int image_025_medium_0(int x) {
    int y = x + 6;
    y = (y * 2) ^ (y >> 1);
    y += 8;
    return y;
}

static int image_025_tiny_1(int x) { return (x * 4) + 6; }

static int image_025_branch_1(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_025_medium_1(int x) {
    int y = x + 7;
    y = (y * 3) ^ (y >> 1);
    y += 9;
    return y;
}

static int image_025_tiny_2(int x) { return (x * 5) + 0; }

static int image_025_branch_2(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int image_025_medium_2(int x) {
    int y = x + 8;
    y = (y * 4) ^ (y >> 1);
    y += 10;
    return y;
}

static int image_025_tiny_3(int x) { return (x * 6) + 1; }

static int image_025_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 16;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int image_025_medium_3(int x) {
    int y = x + 9;
    y = (y * 5) ^ (y >> 1);
    y += 11;
    return y;
}

static int image_025_tiny_4(int x) { return (x * 2) + 2; }

static int image_025_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 13;
    return out;
}

static int image_025_medium_4(int x) {
    int y = x + 10;
    y = (y * 6) ^ (y >> 1);
    y += 12;
    return y;
}

static int image_025_tiny_5(int x) { return (x * 3) + 3; }

static int image_025_branch_5(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int image_025_medium_5(int x) {
    int y = x + 11;
    y = (y * 2) ^ (y >> 1);
    y += 13;
    return y;
}

static int image_025_tiny_6(int x) { return (x * 4) + 4; }

static int image_025_branch_6(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int image_025_medium_6(int x) {
    int y = x + 12;
    y = (y * 3) ^ (y >> 1);
    y += 14;
    return y;
}

static int image_025_tiny_7(int x) { return (x * 5) + 5; }

static int image_025_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 20;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int image_025_medium_7(int x) {
    int y = x + 13;
    y = (y * 4) ^ (y >> 1);
    y += 15;
    return y;
}

static int image_025_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int image_025_large_b(int x) {
    int s = x;
    s += (x & 3) * 10;
    if ((s % 2) == 0) s -= 2;
    else s += 1;
    s += (x & 4) * 11;
    if ((s % 3) == 0) s -= 3;
    else s += 3;
    s += (x & 5) * 12;
    if ((s % 4) == 0) s -= 4;
    else s += 5;
    s += (x & 6) * 13;
    if ((s % 5) == 0) s -= 5;
    else s += 7;
    return s;
}

static int image_025_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 13;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int image_025_recursive(int x) {
    if (x <= 0) return 0;
    return x + image_025_recursive(x - 1);
}

extern "C" int image_025_dispatch(int x) {
    int total = 0;
    total += image_025_branch_0(0, 0);
    total += image_025_branch_1(1, x + 1);
    total += image_025_branch_2(2, 2);
    total ^=  image_025_recursive(3);
    total += image_025_branch_4(1, 4);
    total += image_025_branch_5(2, x + 5);
    total += image_025_branch_6(0, 6);
    total ^=  image_025_recursive(3);
    total += image_025_branch_variable(2, 1);
    total += image_025_branch_variable(0, x + 9);
    total += image_025_branch_variable(1, 3);
    total ^=  image_025_recursive(3);
    total += image_025_large_a(5);
    total += image_025_large_b(x + 13);
    total += image_025_recursive(2);
    total ^=  image_025_recursive(3);
    return total;
}
