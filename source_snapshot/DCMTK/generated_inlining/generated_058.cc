// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=2, argument_pattern=1, body_shape=3, driver_shape=3, size_profile=0. Design space=4096.

static int packet_058_tiny_0(int x) { return x - 4; }

static int packet_058_branch_0(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_058_medium_0(int x) {
    int y = x + 6;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_1(int x) { return x - 5; }

static int packet_058_branch_1(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int packet_058_medium_1(int x) {
    int y = x + 7;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_2(int x) { return x - 6; }

static int packet_058_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 14;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int packet_058_medium_2(int x) {
    int y = x + 8;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_3(int x) { return x - 7; }

static int packet_058_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 7;
    return out;
}

static int packet_058_medium_3(int x) {
    int y = x + 9;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_4(int x) { return x - 8; }

static int packet_058_branch_4(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_058_medium_4(int x) {
    int y = x + 10;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_5(int x) { return x - 9; }

static int packet_058_branch_5(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_058_medium_5(int x) {
    int y = x + 11;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_6(int x) { return x - 10; }

static int packet_058_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 18;
    case 2: return x * 4;
    default: return x - 2;
    }
}

static int packet_058_medium_6(int x) {
    int y = x + 12;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int packet_058_tiny_7(int x) { return x - 0; }

static int packet_058_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 11;
    return out;
}

static int packet_058_medium_7(int x) {
    int y = x + 13;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int packet_058_large_a(int x) {
    int s = x;
    s += (x & 3) * 4;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 5;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 6;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 7;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int packet_058_large_b(int x) {
    int s = x;
    s = (s * 3) + 75;
    s ^= (s >> 1);
    s = (s * 4) + 76;
    s ^= (s >> 2);
    s = (s * 5) + 77;
    s ^= (s >> 3);
    s = (s * 6) + 78;
    s ^= (s >> 1);
    s = (s * 7) + 79;
    s ^= (s >> 2);
    s = (s * 8) + 80;
    s ^= (s >> 3);
    s = (s * 9) + 81;
    s ^= (s >> 1);
    s = (s * 10) + 82;
    s ^= (s >> 2);
    return s;
}

static int packet_058_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 4;
    return out;
}

static int packet_058_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_058_recursive(x - 2) : packet_058_recursive(x - 1);
}

extern "C" int packet_058_kernel(int x) {
    int total = 0;
    total += packet_058_medium_0(3);
    total += packet_058_medium_1(4);
    total += packet_058_medium_2(5);
    total += packet_058_recursive(3);
    total += (packet_058_medium_4(7)) & 255;
    total += packet_058_medium_5(8);
    total += packet_058_medium_6(9);
    total += packet_058_recursive(3);
    total += packet_058_large_a(0);
    total += (packet_058_large_b(1)) & 255;
    total += packet_058_large_a(2);
    total += packet_058_recursive(3);
    total += packet_058_branch_variable(0, 4);
    total += packet_058_branch_variable(1, 5);
    total += (packet_058_recursive(2)) & 255;
    total += packet_058_recursive(3);
    return total;
}
