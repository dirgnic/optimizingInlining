// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=1, argument_pattern=0, body_shape=2, driver_shape=2, size_profile=0. Design space=4096.

static int packet_038_tiny_0(int x) { return (x * 6) + 4; }

static int packet_038_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 3;
    return out;
}

static int packet_038_medium_0(int x) {
    int y = x + 8;
    y = (y * 5) ^ (y >> 1);
    y += 4;
    return y;
}

static int packet_038_tiny_1(int x) { return (x * 2) + 5; }

static int packet_038_branch_1(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_038_medium_1(int x) {
    int y = x + 9;
    y = (y * 6) ^ (y >> 1);
    y += 5;
    return y;
}

static int packet_038_tiny_2(int x) { return (x * 3) + 6; }

static int packet_038_branch_2(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_038_medium_2(int x) {
    int y = x + 10;
    y = (y * 2) ^ (y >> 1);
    y += 6;
    return y;
}

static int packet_038_tiny_3(int x) { return (x * 4) + 0; }

static int packet_038_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 12;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int packet_038_medium_3(int x) {
    int y = x + 11;
    y = (y * 3) ^ (y >> 1);
    y += 7;
    return y;
}

static int packet_038_tiny_4(int x) { return (x * 5) + 1; }

static int packet_038_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 7;
    return out;
}

static int packet_038_medium_4(int x) {
    int y = x + 12;
    y = (y * 4) ^ (y >> 1);
    y += 8;
    return y;
}

static int packet_038_tiny_5(int x) { return (x * 6) + 2; }

static int packet_038_branch_5(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_038_medium_5(int x) {
    int y = x + 13;
    y = (y * 5) ^ (y >> 1);
    y += 9;
    return y;
}

static int packet_038_tiny_6(int x) { return (x * 2) + 3; }

static int packet_038_branch_6(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int packet_038_medium_6(int x) {
    int y = x + 3;
    y = (y * 6) ^ (y >> 1);
    y += 10;
    return y;
}

static int packet_038_tiny_7(int x) { return (x * 3) + 4; }

static int packet_038_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 16;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int packet_038_medium_7(int x) {
    int y = x + 4;
    y = (y * 2) ^ (y >> 1);
    y += 11;
    return y;
}

static int packet_038_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 3;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_038_large_b(int x) {
    int s = x;
    s += (x & 3) * 1;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 2;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 3;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 4;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int packet_038_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 9;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int packet_038_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_038_recursive(x - 1);
}

extern "C" int packet_038_step(int x) {
    int total = 0;
    total += packet_038_tiny_0(x + 0);
    total += packet_038_branch_1(x & 3, x + 1);
    if ((x + 2) & 1) total += packet_038_medium_2(x + 2);
    total += packet_038_large_b(x + 3);
    total += packet_038_branch_variable(x & 3, x + 4);
    if ((x + 5) & 1) total += packet_038_recursive(1);
    total += packet_038_tiny_6(x + 6);
    total += packet_038_branch_7(x & 3, x + 7);
    if ((x + 8) & 1) total += packet_038_medium_0(x + 8);
    total += packet_038_large_b(x + 9);
    total += packet_038_branch_variable(x & 3, x + 10);
    if ((x + 11) & 1) total += packet_038_recursive(3);
    total += packet_038_tiny_4(x + 12);
    total += packet_038_branch_5(x & 3, x + 13);
    if ((x + 14) & 1) total += packet_038_medium_6(x + 14);
    total += packet_038_large_b(x + 15);
    return total;
}
