// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=1, argument_pattern=1, body_shape=2, driver_shape=3, size_profile=0. Design space=4096.

static int packet_054_tiny_0(int x) { return (x * 2) + 6; }

static int packet_054_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 19;
    return out;
}

static int packet_054_medium_0(int x) {
    int y = x + 13;
    y = (y * 6) ^ (y >> 1);
    y += 3;
    return y;
}

static int packet_054_tiny_1(int x) { return (x * 3) + 0; }

static int packet_054_branch_1(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_054_medium_1(int x) {
    int y = x + 3;
    y = (y * 2) ^ (y >> 1);
    y += 4;
    return y;
}

static int packet_054_tiny_2(int x) { return (x * 4) + 1; }

static int packet_054_branch_2(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_054_medium_2(int x) {
    int y = x + 4;
    y = (y * 3) ^ (y >> 1);
    y += 5;
    return y;
}

static int packet_054_tiny_3(int x) { return (x * 5) + 2; }

static int packet_054_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 11;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int packet_054_medium_3(int x) {
    int y = x + 5;
    y = (y * 4) ^ (y >> 1);
    y += 6;
    return y;
}

static int packet_054_tiny_4(int x) { return (x * 6) + 3; }

static int packet_054_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 4;
    return out;
}

static int packet_054_medium_4(int x) {
    int y = x + 6;
    y = (y * 5) ^ (y >> 1);
    y += 7;
    return y;
}

static int packet_054_tiny_5(int x) { return (x * 2) + 4; }

static int packet_054_branch_5(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_054_medium_5(int x) {
    int y = x + 7;
    y = (y * 6) ^ (y >> 1);
    y += 8;
    return y;
}

static int packet_054_tiny_6(int x) { return (x * 3) + 5; }

static int packet_054_branch_6(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_054_medium_6(int x) {
    int y = x + 8;
    y = (y * 2) ^ (y >> 1);
    y += 9;
    return y;
}

static int packet_054_tiny_7(int x) { return (x * 4) + 6; }

static int packet_054_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 15;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int packet_054_medium_7(int x) {
    int y = x + 9;
    y = (y * 3) ^ (y >> 1);
    y += 10;
    return y;
}

static int packet_054_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_054_large_b(int x) {
    int s = x;
    s += (x & 3) * 6;
    if ((s % 2) == 0) s -= 1;
    else s += 1;
    s += (x & 4) * 7;
    if ((s % 3) == 0) s -= 2;
    else s += 3;
    s += (x & 5) * 8;
    if ((s % 4) == 0) s -= 3;
    else s += 5;
    s += (x & 6) * 9;
    if ((s % 5) == 0) s -= 4;
    else s += 7;
    return s;
}

static int packet_054_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 8;
    case 2: return x * 3;
    default: return x - 6;
    }
}

static int packet_054_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_054_recursive(x - 1);
}

extern "C" int packet_054_kernel(int x) {
    int total = 0;
    total += packet_054_tiny_0(10);
    total += packet_054_branch_1(1, 0);
    total += packet_054_medium_2(1);
    total += packet_054_large_b(2);
    total += (packet_054_branch_variable(1, 3)) & 255;
    total += packet_054_recursive(1);
    total += packet_054_tiny_6(5);
    total += packet_054_branch_7(1, 6);
    total += packet_054_medium_0(7);
    total += (packet_054_large_b(8)) & 255;
    total += packet_054_branch_variable(1, 9);
    total += packet_054_recursive(3);
    total += packet_054_tiny_4(0);
    total += packet_054_branch_5(1, 1);
    total += (packet_054_medium_6(2)) & 255;
    total += packet_054_large_b(3);
    return total;
}
