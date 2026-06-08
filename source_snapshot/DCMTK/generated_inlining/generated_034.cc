// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=0, argument_pattern=0, body_shape=1, driver_shape=2, size_profile=0. Design space=4096.

static int packet_034_tiny_0(int x) { return x ^ 35; }

static int packet_034_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 5;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int packet_034_medium_0(int x) {
    int y = x + 4;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_1(int x) { return x ^ 36; }

static int packet_034_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 19;
    return out;
}

static int packet_034_medium_1(int x) {
    int y = x + 5;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_2(int x) { return x ^ 37; }

static int packet_034_branch_2(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_034_medium_2(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_3(int x) { return x ^ 38; }

static int packet_034_branch_3(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_034_medium_3(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_4(int x) { return x ^ 39; }

static int packet_034_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 9;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int packet_034_medium_4(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_5(int x) { return x ^ 40; }

static int packet_034_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 4;
    return out;
}

static int packet_034_medium_5(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_6(int x) { return x ^ 41; }

static int packet_034_branch_6(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_034_medium_6(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_tiny_7(int x) { return x ^ 42; }

static int packet_034_branch_7(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_034_medium_7(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_034_large_a(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 8;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_034_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 2;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_034_branch_variable(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int packet_034_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_034_recursive(x - 2) : packet_034_recursive(x - 1);
}

extern "C" int packet_034_step(int x) {
    int total = 0;
    total += packet_034_medium_0(x + 0);
    total += packet_034_medium_1(x + 1);
    if ((x + 2) & 1) total += packet_034_medium_2(x + 2);
    total += packet_034_medium_3(x + 3);
    total += packet_034_medium_4(x + 4);
    if ((x + 5) & 1) total += packet_034_medium_5(x + 5);
    total += packet_034_medium_6(x + 6);
    total += packet_034_medium_7(x + 7);
    if ((x + 8) & 1) total += packet_034_large_a(x + 8);
    total += packet_034_large_b(x + 9);
    total += packet_034_large_a(x + 10);
    if ((x + 11) & 1) total += packet_034_large_b(x + 11);
    total += packet_034_branch_variable(x & 3, x + 12);
    total += packet_034_branch_variable(x & 3, x + 13);
    if ((x + 14) & 1) total += packet_034_recursive(2);
    total += packet_034_recursive(3);
    return total;
}
