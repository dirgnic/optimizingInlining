// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=3, argument_pattern=3, body_shape=3, driver_shape=1, size_profile=0. Design space=4096.

static int packet_030_tiny_0(int x) { return x - 9; }

static int packet_030_branch_0(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_030_medium_0(int x) {
    int y = x + 11;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_1(int x) { return x - 10; }

static int packet_030_branch_1(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_030_medium_1(int x) {
    int y = x + 12;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_2(int x) { return x - 0; }

static int packet_030_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 20;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int packet_030_medium_2(int x) {
    int y = x + 13;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_3(int x) { return x - 1; }

static int packet_030_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 17;
    return out;
}

static int packet_030_medium_3(int x) {
    int y = x + 3;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_4(int x) { return x - 2; }

static int packet_030_branch_4(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_030_medium_4(int x) {
    int y = x + 4;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_5(int x) { return x - 3; }

static int packet_030_branch_5(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_030_medium_5(int x) {
    int y = x + 5;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_6(int x) { return x - 4; }

static int packet_030_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 7;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int packet_030_medium_6(int x) {
    int y = x + 6;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int packet_030_tiny_7(int x) { return x - 5; }

static int packet_030_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 21;
    return out;
}

static int packet_030_medium_7(int x) {
    int y = x + 7;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int packet_030_large_a(int x) {
    int s = x;
    s += (x & 3) * 9;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 10;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 11;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 12;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int packet_030_large_b(int x) {
    int s = x;
    s = (s * 3) + 47;
    s ^= (s >> 1);
    s = (s * 4) + 48;
    s ^= (s >> 2);
    s = (s * 5) + 49;
    s ^= (s >> 3);
    s = (s * 6) + 50;
    s ^= (s >> 1);
    s = (s * 7) + 51;
    s ^= (s >> 2);
    s = (s * 8) + 52;
    s ^= (s >> 3);
    s = (s * 9) + 53;
    s ^= (s >> 1);
    s = (s * 10) + 54;
    s ^= (s >> 2);
    return s;
}

static int packet_030_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 14;
    return out;
}

static int packet_030_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_030_recursive(x - 2) : packet_030_recursive(x - 1);
}

extern "C" int packet_030_dispatch(int x) {
    int total = 0;
    total += packet_030_branch_variable(2, 4);
    total += packet_030_medium_1(x & 7);
    total += packet_030_medium_2(x & 7);
    total ^=  packet_030_medium_3(7);
    total += packet_030_medium_4(x & 7);
    total += packet_030_branch_variable(x & 3, x & 7);
    total += packet_030_medium_6(10);
    total ^=  packet_030_medium_7(x & 7);
    total += packet_030_large_a(x & 7);
    total += packet_030_large_b(0);
    total += packet_030_branch_variable(0, x & 7);
    total ^=  packet_030_large_b(x & 7);
    total += packet_030_branch_variable(2, 3);
    total += packet_030_branch_variable(x & 3, x & 7);
    total += packet_030_recursive(2);
    total ^=  packet_030_branch_variable(x & 3, 6);
    return total;
}
