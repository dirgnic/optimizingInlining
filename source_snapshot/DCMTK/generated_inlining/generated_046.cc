// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=2, call_mix=3, argument_pattern=0, body_shape=0, driver_shape=3, size_profile=0. Design space=4096.

static int packet_046_tiny_0(int x) { return x + 47; }

static int packet_046_branch_0(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int packet_046_medium_0(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int packet_046_tiny_1(int x) { return x + 48; }

static int packet_046_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 18;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int packet_046_medium_1(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int packet_046_tiny_2(int x) { return x + 49; }

static int packet_046_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 13;
    return out;
}

static int packet_046_medium_2(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int packet_046_tiny_3(int x) { return x + 50; }

static int packet_046_branch_3(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_046_medium_3(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int packet_046_tiny_4(int x) { return x + 51; }

static int packet_046_branch_4(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int packet_046_medium_4(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int packet_046_tiny_5(int x) { return x + 52; }

static int packet_046_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 5;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int packet_046_medium_5(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int packet_046_tiny_6(int x) { return x + 53; }

static int packet_046_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 17;
    return out;
}

static int packet_046_medium_6(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int packet_046_tiny_7(int x) { return x + 54; }

static int packet_046_branch_7(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_046_medium_7(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int packet_046_large_a(int x) {
    int s = x;
    s = (s * 3) + 46;
    s ^= (s >> 1);
    s = (s * 4) + 47;
    s ^= (s >> 2);
    s = (s * 5) + 48;
    s ^= (s >> 3);
    s = (s * 6) + 49;
    s ^= (s >> 1);
    s = (s * 7) + 50;
    s ^= (s >> 2);
    s = (s * 8) + 51;
    s ^= (s >> 3);
    s = (s * 9) + 52;
    s ^= (s >> 1);
    s = (s * 10) + 53;
    s ^= (s >> 2);
    return s;
}

static int packet_046_large_b(int x) {
    int s = x;
    for (int i = 0; i < 7; ++i) {
        s += (x ^ i) + 11;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int packet_046_branch_variable(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int packet_046_recursive(int x) {
    if (x <= 0) return 0;
    return x + packet_046_recursive(x - 1);
}

extern "C" int packet_046_kernel(int x) {
    int total = 0;
    total += packet_046_branch_variable(x & 3, x + 0);
    total += packet_046_medium_1(x + 1);
    total += packet_046_medium_2(x + 2);
    total += packet_046_medium_3(x + 3);
    total += (packet_046_medium_4(x + 4)) & 255;
    total += packet_046_branch_variable(x & 3, x + 5);
    total += packet_046_medium_6(x + 6);
    total += packet_046_medium_7(x + 7);
    total += packet_046_large_a(x + 8);
    total += (packet_046_large_b(x + 9)) & 255;
    total += packet_046_branch_variable(x & 3, x + 10);
    total += packet_046_large_b(x + 11);
    total += packet_046_branch_variable(x & 3, x + 12);
    total += packet_046_branch_variable(x & 3, x + 13);
    total += (packet_046_recursive(2)) & 255;
    total += packet_046_branch_variable(x & 3, x + 15);
    return total;
}
