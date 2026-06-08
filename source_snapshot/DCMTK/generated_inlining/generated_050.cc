// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=0, argument_pattern=1, body_shape=1, driver_shape=3, size_profile=0. Design space=4096.

static int packet_050_tiny_0(int x) { return x ^ 51; }

static int packet_050_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 21;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int packet_050_medium_0(int x) {
    int y = x + 9;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_1(int x) { return x ^ 52; }

static int packet_050_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 16;
    return out;
}

static int packet_050_medium_1(int x) {
    int y = x + 10;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_2(int x) { return x ^ 53; }

static int packet_050_branch_2(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_050_medium_2(int x) {
    int y = x + 11;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_3(int x) { return x ^ 54; }

static int packet_050_branch_3(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_050_medium_3(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_4(int x) { return x ^ 55; }

static int packet_050_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 8;
    case 2: return x * 3;
    default: return x - 6;
    }
}

static int packet_050_medium_4(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_5(int x) { return x ^ 56; }

static int packet_050_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 20;
    return out;
}

static int packet_050_medium_5(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_6(int x) { return x ^ 57; }

static int packet_050_branch_6(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_050_medium_6(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_tiny_7(int x) { return x ^ 58; }

static int packet_050_branch_7(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_050_medium_7(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int packet_050_large_a(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 11;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_050_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 6;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_050_branch_variable(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_050_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_050_recursive(x - 2) : packet_050_recursive(x - 1);
}

extern "C" int packet_050_kernel(int x) {
    int total = 0;
    total += packet_050_medium_0(6);
    total += packet_050_medium_1(7);
    total += packet_050_medium_2(8);
    total += packet_050_medium_3(9);
    total += (packet_050_medium_4(10)) & 255;
    total += packet_050_medium_5(0);
    total += packet_050_medium_6(1);
    total += packet_050_medium_7(2);
    total += packet_050_large_a(3);
    total += (packet_050_large_b(4)) & 255;
    total += packet_050_large_a(5);
    total += packet_050_large_b(6);
    total += packet_050_branch_variable(0, 7);
    total += packet_050_branch_variable(1, 8);
    total += (packet_050_recursive(2)) & 255;
    total += packet_050_recursive(3);
    return total;
}
