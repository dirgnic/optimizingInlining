// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=0, argument_pattern=2, body_shape=0, driver_shape=0, size_profile=0. Design space=4096.

static int packet_002_tiny_0(int x) { return x + 3; }

static int packet_002_branch_0(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_002_medium_0(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int packet_002_tiny_1(int x) { return x + 4; }

static int packet_002_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 8;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int packet_002_medium_1(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int packet_002_tiny_2(int x) { return x + 5; }

static int packet_002_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 7;
    return out;
}

static int packet_002_medium_2(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int packet_002_tiny_3(int x) { return x + 6; }

static int packet_002_branch_3(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_002_medium_3(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int packet_002_tiny_4(int x) { return x + 7; }

static int packet_002_branch_4(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_002_medium_4(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int packet_002_tiny_5(int x) { return x + 8; }

static int packet_002_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 12;
    case 2: return x * 4;
    default: return x - 1;
    }
}

static int packet_002_medium_5(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int packet_002_tiny_6(int x) { return x + 9; }

static int packet_002_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 11;
    return out;
}

static int packet_002_medium_6(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int packet_002_tiny_7(int x) { return x + 10; }

static int packet_002_branch_7(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_002_medium_7(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int packet_002_large_a(int x) {
    int s = x;
    s = (s * 3) + 2;
    s ^= (s >> 1);
    s = (s * 4) + 3;
    s ^= (s >> 2);
    s = (s * 5) + 4;
    s ^= (s >> 3);
    s = (s * 6) + 5;
    s ^= (s >> 1);
    s = (s * 7) + 6;
    s ^= (s >> 2);
    s = (s * 8) + 7;
    s ^= (s >> 3);
    s = (s * 9) + 8;
    s ^= (s >> 1);
    s = (s * 10) + 9;
    s ^= (s >> 2);
    return s;
}

static int packet_002_large_b(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 6;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_002_branch_variable(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_002_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_002_recursive(x - 1);
}

extern "C" int packet_002_entry(int x) {
    int total = 0;
    total += packet_002_medium_0(0);
    total += packet_002_medium_1(x + 1);
    total += packet_002_medium_2(2);
    total += packet_002_medium_3(x + 3);
    total += packet_002_medium_4(4);
    total += packet_002_medium_5(x + 5);
    total += packet_002_medium_6(6);
    total += packet_002_medium_7(x + 7);
    total += packet_002_large_a(1);
    total += packet_002_large_b(x + 9);
    total += packet_002_large_a(3);
    total += packet_002_large_b(x + 11);
    total += packet_002_branch_variable(0, 5);
    total += packet_002_branch_variable(1, x + 13);
    total += packet_002_recursive(2);
    total += packet_002_recursive(3);
    return total;
}
