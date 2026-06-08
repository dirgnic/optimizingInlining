// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=0, argument_pattern=3, body_shape=0, driver_shape=1, size_profile=0. Design space=4096.

static int packet_018_tiny_0(int x) { return x + 19; }

static int packet_018_branch_0(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_018_medium_0(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int packet_018_tiny_1(int x) { return x + 20; }

static int packet_018_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 7;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int packet_018_medium_1(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int packet_018_tiny_2(int x) { return x + 21; }

static int packet_018_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 4;
    return out;
}

static int packet_018_medium_2(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int packet_018_tiny_3(int x) { return x + 22; }

static int packet_018_branch_3(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_018_medium_3(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int packet_018_tiny_4(int x) { return x + 23; }

static int packet_018_branch_4(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_018_medium_4(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int packet_018_tiny_5(int x) { return x + 24; }

static int packet_018_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 11;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int packet_018_medium_5(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int packet_018_tiny_6(int x) { return x + 25; }

static int packet_018_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 8;
    return out;
}

static int packet_018_medium_6(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int packet_018_tiny_7(int x) { return x + 26; }

static int packet_018_branch_7(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_018_medium_7(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int packet_018_large_a(int x) {
    int s = x;
    s = (s * 3) + 18;
    s ^= (s >> 1);
    s = (s * 4) + 19;
    s ^= (s >> 2);
    s = (s * 5) + 20;
    s ^= (s >> 3);
    s = (s * 6) + 21;
    s ^= (s >> 1);
    s = (s * 7) + 22;
    s ^= (s >> 2);
    s = (s * 8) + 23;
    s ^= (s >> 3);
    s = (s * 9) + 24;
    s ^= (s >> 1);
    s = (s * 10) + 25;
    s ^= (s >> 2);
    return s;
}

static int packet_018_large_b(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 9;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_018_branch_variable(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_018_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_018_recursive(x - 1);
}

extern "C" int packet_018_dispatch(int x) {
    int total = 0;
    total += packet_018_medium_0(5);
    total += packet_018_medium_1(x & 7);
    total += packet_018_medium_2(x & 7);
    total ^=  packet_018_medium_3(8);
    total += packet_018_medium_4(x & 7);
    total += packet_018_medium_5(x & 7);
    total += packet_018_medium_6(11);
    total ^=  packet_018_medium_7(x & 7);
    total += packet_018_large_a(x & 7);
    total += packet_018_large_b(1);
    total += packet_018_large_a(x & 7);
    total ^=  packet_018_large_b(x & 7);
    total += packet_018_branch_variable(2, 4);
    total += packet_018_branch_variable(x & 3, x & 7);
    total += packet_018_recursive(2);
    total ^=  packet_018_recursive(3);
    return total;
}
