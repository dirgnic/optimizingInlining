// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=3, argument_pattern=1, body_shape=0, driver_shape=0, size_profile=1. Design space=4096.

static int packet_062_tiny_0(int x) { return x + 63; }

static int packet_062_branch_0(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_062_medium_0(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 8;
    y += (x & 3) * 7;
    return y;
}

static int packet_062_tiny_1(int x) { return x + 64; }

static int packet_062_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 17;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int packet_062_medium_1(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 0;
    y += (x & 3) * 1;
    return y;
}

static int packet_062_tiny_2(int x) { return x + 65; }

static int packet_062_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 10;
    return out;
}

static int packet_062_medium_2(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 1;
    y += (x & 3) * 2;
    return y;
}

static int packet_062_tiny_3(int x) { return x + 66; }

static int packet_062_branch_3(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_062_medium_3(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 2;
    y += (x & 3) * 3;
    return y;
}

static int packet_062_tiny_4(int x) { return x + 67; }

static int packet_062_branch_4(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_062_medium_4(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 3;
    y += (x & 3) * 4;
    return y;
}

static int packet_062_tiny_5(int x) { return x + 68; }

static int packet_062_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 21;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int packet_062_medium_5(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 4;
    y += (x & 3) * 5;
    return y;
}

static int packet_062_tiny_6(int x) { return x + 69; }

static int packet_062_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 14;
    return out;
}

static int packet_062_medium_6(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 5;
    y += (x & 3) * 6;
    return y;
}

static int packet_062_tiny_7(int x) { return x + 70; }

static int packet_062_branch_7(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_062_medium_7(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 6;
    y += (x & 3) * 7;
    return y;
}

static int packet_062_large_a(int x) {
    int s = x;
    s = (s * 3) + 62;
    s ^= (s >> 1);
    s = (s * 4) + 63;
    s ^= (s >> 2);
    s = (s * 5) + 64;
    s ^= (s >> 3);
    s = (s * 6) + 65;
    s ^= (s >> 1);
    s = (s * 7) + 66;
    s ^= (s >> 2);
    s = (s * 8) + 67;
    s ^= (s >> 3);
    s = (s * 9) + 68;
    s ^= (s >> 1);
    s = (s * 10) + 69;
    s ^= (s >> 2);
    s = (s * 11) + 70;
    s ^= (s >> 3);
    s = (s * 12) + 71;
    s ^= (s >> 1);
    s = (s * 13) + 72;
    s ^= (s >> 2);
    s = (s * 14) + 73;
    s ^= (s >> 3);
    s = (s * 15) + 74;
    s ^= (s >> 1);
    return s;
}

static int packet_062_large_b(int x) {
    int s = x;
    for (int i = 0; i < 10; ++i) {
        s += (x ^ i) + 1;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_062_branch_variable(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_062_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_062_recursive(x - 1);
}

extern "C" int packet_062_entry(int x) {
    int total = 0;
    total += packet_062_branch_variable(0, 7);
    total += packet_062_medium_1(8);
    total += packet_062_medium_2(9);
    total += packet_062_medium_3(10);
    total += packet_062_medium_4(0);
    total += packet_062_branch_variable(2, 1);
    total += packet_062_medium_6(2);
    total += packet_062_medium_7(3);
    total += packet_062_large_a(4);
    total += packet_062_large_b(5);
    total += packet_062_branch_variable(1, 6);
    total += packet_062_large_b(7);
    total += packet_062_branch_variable(0, 8);
    total += packet_062_branch_variable(1, 9);
    total += packet_062_recursive(2);
    total += packet_062_branch_variable(0, 0);
    return total;
}
