// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=3, argument_pattern=2, body_shape=3, driver_shape=0, size_profile=0. Design space=4096.

static int packet_014_tiny_0(int x) { return x - 4; }

static int packet_014_branch_0(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_014_medium_0(int x) {
    int y = x + 6;
    y = (y << 2) - 1;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_1(int x) { return x - 5; }

static int packet_014_branch_1(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_014_medium_1(int x) {
    int y = x + 7;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_2(int x) { return x - 6; }

static int packet_014_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 21;
    case 2: return x * 4;
    default: return x - 3;
    }
}

static int packet_014_medium_2(int x) {
    int y = x + 8;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_3(int x) { return x - 7; }

static int packet_014_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 20;
    return out;
}

static int packet_014_medium_3(int x) {
    int y = x + 9;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_4(int x) { return x - 8; }

static int packet_014_branch_4(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_014_medium_4(int x) {
    int y = x + 10;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_5(int x) { return x - 9; }

static int packet_014_branch_5(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int packet_014_medium_5(int x) {
    int y = x + 11;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_6(int x) { return x - 10; }

static int packet_014_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 8;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int packet_014_medium_6(int x) {
    int y = x + 12;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int packet_014_tiny_7(int x) { return x - 0; }

static int packet_014_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 5;
    return out;
}

static int packet_014_medium_7(int x) {
    int y = x + 13;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int packet_014_large_a(int x) {
    int s = x;
    s += (x & 3) * 4;
    if ((s % 2) == 0) s -= 4;
    else s += 1;
    s += (x & 4) * 5;
    if ((s % 3) == 0) s -= 5;
    else s += 3;
    s += (x & 5) * 6;
    if ((s % 4) == 0) s -= 6;
    else s += 5;
    s += (x & 6) * 7;
    if ((s % 5) == 0) s -= 7;
    else s += 7;
    return s;
}

static int packet_014_large_b(int x) {
    int s = x;
    s = (s * 3) + 31;
    s ^= (s >> 1);
    s = (s * 4) + 32;
    s ^= (s >> 2);
    s = (s * 5) + 33;
    s ^= (s >> 3);
    s = (s * 6) + 34;
    s ^= (s >> 1);
    s = (s * 7) + 35;
    s ^= (s >> 2);
    s = (s * 8) + 36;
    s ^= (s >> 3);
    s = (s * 9) + 37;
    s ^= (s >> 1);
    s = (s * 10) + 38;
    s ^= (s >> 2);
    return s;
}

static int packet_014_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 17;
    return out;
}

static int packet_014_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_014_recursive(x - 2) : packet_014_recursive(x - 1);
}

extern "C" int packet_014_entry(int x) {
    int total = 0;
    total += packet_014_branch_variable(0, 0);
    total += packet_014_medium_1(x + 1);
    total += packet_014_medium_2(2);
    total += packet_014_medium_3(x + 3);
    total += packet_014_medium_4(4);
    total += packet_014_branch_variable(2, x + 5);
    total += packet_014_medium_6(6);
    total += packet_014_medium_7(x + 7);
    total += packet_014_large_a(1);
    total += packet_014_large_b(x + 9);
    total += packet_014_branch_variable(1, 3);
    total += packet_014_large_b(x + 11);
    total += packet_014_branch_variable(0, 5);
    total += packet_014_branch_variable(1, x + 13);
    total += packet_014_recursive(2);
    total += packet_014_branch_variable(0, x + 15);
    return total;
}
