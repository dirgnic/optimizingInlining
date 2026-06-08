// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=2, argument_pattern=0, body_shape=3, driver_shape=2, size_profile=0. Design space=4096.

static int packet_042_tiny_0(int x) { return x - 10; }

static int packet_042_branch_0(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_042_medium_0(int x) {
    int y = x + 12;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_1(int x) { return x - 0; }

static int packet_042_branch_1(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int packet_042_medium_1(int x) {
    int y = x + 13;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_2(int x) { return x - 1; }

static int packet_042_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 15;
    case 2: return x * 5;
    default: return x - 3;
    }
}

static int packet_042_medium_2(int x) {
    int y = x + 3;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_3(int x) { return x - 2; }

static int packet_042_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 10;
    return out;
}

static int packet_042_medium_3(int x) {
    int y = x + 4;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_4(int x) { return x - 3; }

static int packet_042_branch_4(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_042_medium_4(int x) {
    int y = x + 5;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_5(int x) { return x - 4; }

static int packet_042_branch_5(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int packet_042_medium_5(int x) {
    int y = x + 6;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_6(int x) { return x - 5; }

static int packet_042_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 19;
    case 2: return x * 3;
    default: return x - 7;
    }
}

static int packet_042_medium_6(int x) {
    int y = x + 7;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int packet_042_tiny_7(int x) { return x - 6; }

static int packet_042_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 14;
    return out;
}

static int packet_042_medium_7(int x) {
    int y = x + 8;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int packet_042_large_a(int x) {
    int s = x;
    s += (x & 3) * 10;
    if ((s % 2) == 0) s -= 2;
    else s += 1;
    s += (x & 4) * 11;
    if ((s % 3) == 0) s -= 3;
    else s += 3;
    s += (x & 5) * 12;
    if ((s % 4) == 0) s -= 4;
    else s += 5;
    s += (x & 6) * 13;
    if ((s % 5) == 0) s -= 5;
    else s += 7;
    return s;
}

static int packet_042_large_b(int x) {
    int s = x;
    s = (s * 3) + 59;
    s ^= (s >> 1);
    s = (s * 4) + 60;
    s ^= (s >> 2);
    s = (s * 5) + 61;
    s ^= (s >> 3);
    s = (s * 6) + 62;
    s ^= (s >> 1);
    s = (s * 7) + 63;
    s ^= (s >> 2);
    s = (s * 8) + 64;
    s ^= (s >> 3);
    s = (s * 9) + 65;
    s ^= (s >> 1);
    s = (s * 10) + 66;
    s ^= (s >> 2);
    return s;
}

static int packet_042_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 7;
    return out;
}

static int packet_042_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + packet_042_recursive(x - 2) : packet_042_recursive(x - 1);
}

extern "C" int packet_042_step(int x) {
    int total = 0;
    total += packet_042_medium_0(x + 0);
    total += packet_042_medium_1(x + 1);
    if ((x + 2) & 1) total += packet_042_medium_2(x + 2);
    total += packet_042_recursive(3);
    total += packet_042_medium_4(x + 4);
    if ((x + 5) & 1) total += packet_042_medium_5(x + 5);
    total += packet_042_medium_6(x + 6);
    total += packet_042_recursive(3);
    if ((x + 8) & 1) total += packet_042_large_a(x + 8);
    total += packet_042_large_b(x + 9);
    total += packet_042_large_a(x + 10);
    if ((x + 11) & 1) total += packet_042_recursive(3);
    total += packet_042_branch_variable(x & 3, x + 12);
    total += packet_042_branch_variable(x & 3, x + 13);
    if ((x + 14) & 1) total += packet_042_recursive(2);
    total += packet_042_recursive(3);
    return total;
}
