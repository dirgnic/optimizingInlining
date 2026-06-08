// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=2, argument_pattern=3, body_shape=2, driver_shape=1, size_profile=0. Design space=4096.

static int packet_026_tiny_0(int x) { return (x * 4) + 6; }

static int packet_026_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 10;
    return out;
}

static int packet_026_medium_0(int x) {
    int y = x + 7;
    y = (y * 3) ^ (y >> 1);
    y += 9;
    return y;
}

static int packet_026_tiny_1(int x) { return (x * 5) + 0; }

static int packet_026_branch_1(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_026_medium_1(int x) {
    int y = x + 8;
    y = (y * 4) ^ (y >> 1);
    y += 10;
    return y;
}

static int packet_026_tiny_2(int x) { return (x * 6) + 1; }

static int packet_026_branch_2(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_026_medium_2(int x) {
    int y = x + 9;
    y = (y * 5) ^ (y >> 1);
    y += 11;
    return y;
}

static int packet_026_tiny_3(int x) { return (x * 2) + 2; }

static int packet_026_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 17;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int packet_026_medium_3(int x) {
    int y = x + 10;
    y = (y * 6) ^ (y >> 1);
    y += 12;
    return y;
}

static int packet_026_tiny_4(int x) { return (x * 3) + 3; }

static int packet_026_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 14;
    return out;
}

static int packet_026_medium_4(int x) {
    int y = x + 11;
    y = (y * 2) ^ (y >> 1);
    y += 13;
    return y;
}

static int packet_026_tiny_5(int x) { return (x * 4) + 4; }

static int packet_026_branch_5(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_026_medium_5(int x) {
    int y = x + 12;
    y = (y * 3) ^ (y >> 1);
    y += 14;
    return y;
}

static int packet_026_tiny_6(int x) { return (x * 5) + 5; }

static int packet_026_branch_6(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_026_medium_6(int x) {
    int y = x + 13;
    y = (y * 4) ^ (y >> 1);
    y += 15;
    return y;
}

static int packet_026_tiny_7(int x) { return (x * 6) + 6; }

static int packet_026_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 21;
    case 2: return x * 3;
    default: return x - 6;
    }
}

static int packet_026_medium_7(int x) {
    int y = x + 3;
    y = (y * 5) ^ (y >> 1);
    y += 16;
    return y;
}

static int packet_026_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int packet_026_large_b(int x) {
    int s = x;
    s += (x & 3) * 11;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 12;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 13;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 14;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int packet_026_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 14;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int packet_026_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_026_recursive(x - 1);
}

extern "C" int packet_026_dispatch(int x) {
    int total = 0;
    total += packet_026_medium_0(0);
    total += packet_026_medium_1(x & 7);
    total += packet_026_medium_2(x & 7);
    total ^=  packet_026_recursive(3);
    total += packet_026_medium_4(x & 7);
    total += packet_026_medium_5(x & 7);
    total += packet_026_medium_6(6);
    total ^=  packet_026_recursive(3);
    total += packet_026_large_a(x & 7);
    total += packet_026_large_b(9);
    total += packet_026_large_a(x & 7);
    total ^=  packet_026_recursive(3);
    total += packet_026_branch_variable(2, 12);
    total += packet_026_branch_variable(x & 3, x & 7);
    total += packet_026_recursive(2);
    total ^=  packet_026_recursive(3);
    return total;
}
