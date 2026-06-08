// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=0, argument_pattern=2, body_shape=1, driver_shape=0, size_profile=1. Design space=4096.

static int packet_066_tiny_0(int x) { return x ^ 67; }

static int packet_066_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 20;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int packet_066_medium_0(int x) {
    int y = x + 3;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 4;
    return y;
}

static int packet_066_tiny_1(int x) { return x ^ 68; }

static int packet_066_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 13;
    return out;
}

static int packet_066_medium_1(int x) {
    int y = x + 4;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 5;
    return y;
}

static int packet_066_tiny_2(int x) { return x ^ 69; }

static int packet_066_branch_2(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_066_medium_2(int x) {
    int y = x + 5;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 6;
    return y;
}

static int packet_066_tiny_3(int x) { return x ^ 70; }

static int packet_066_branch_3(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int packet_066_medium_3(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 7;
    return y;
}

static int packet_066_tiny_4(int x) { return x ^ 71; }

static int packet_066_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 7;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int packet_066_medium_4(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 1;
    return y;
}

static int packet_066_tiny_5(int x) { return x ^ 72; }

static int packet_066_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 17;
    return out;
}

static int packet_066_medium_5(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 2;
    return y;
}

static int packet_066_tiny_6(int x) { return x ^ 73; }

static int packet_066_branch_6(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_066_medium_6(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 3;
    return y;
}

static int packet_066_tiny_7(int x) { return x ^ 74; }

static int packet_066_branch_7(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_066_medium_7(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 4;
    return y;
}

static int packet_066_large_a(int x) {
    int s = x;
    for (int i = 0; i < 7; ++i) {
        s += (x ^ i) + 1;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_066_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 7;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 6;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_066_branch_variable(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_066_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_066_recursive(x - 2) : packet_066_recursive(x - 1);
}

extern "C" int packet_066_entry(int x) {
    int total = 0;
    total += packet_066_medium_0(0);
    total += packet_066_medium_1(x + 1);
    total += packet_066_medium_2(2);
    total += packet_066_medium_3(x + 3);
    total += packet_066_medium_4(4);
    total += packet_066_medium_5(x + 5);
    total += packet_066_medium_6(6);
    total += packet_066_medium_7(x + 7);
    total += packet_066_large_a(1);
    total += packet_066_large_b(x + 9);
    total += packet_066_large_a(3);
    total += packet_066_large_b(x + 11);
    total += packet_066_branch_variable(0, 5);
    total += packet_066_branch_variable(1, x + 13);
    total += packet_066_recursive(2);
    total += packet_066_recursive(3);
    return total;
}
