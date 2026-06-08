// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=1, argument_pattern=3, body_shape=1, driver_shape=3, size_profile=0. Design space=4096.

static int game_052_tiny_0(int x) { return x ^ 53; }

static int game_052_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 6;
    case 2: return x * 4;
    default: return x - 4;
    }
}

static int game_052_medium_0(int x) {
    int y = x + 11;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_1(int x) { return x ^ 54; }

static int game_052_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 18;
    return out;
}

static int game_052_medium_1(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_2(int x) { return x ^ 55; }

static int game_052_branch_2(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_052_medium_2(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_3(int x) { return x ^ 56; }

static int game_052_branch_3(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_052_medium_3(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_4(int x) { return x ^ 57; }

static int game_052_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 10;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int game_052_medium_4(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_5(int x) { return x ^ 58; }

static int game_052_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 3;
    return out;
}

static int game_052_medium_5(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_6(int x) { return x ^ 59; }

static int game_052_branch_6(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_052_medium_6(int x) {
    int y = x + 6;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_052_tiny_7(int x) { return x ^ 60; }

static int game_052_branch_7(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_052_medium_7(int x) {
    int y = x + 7;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_052_large_a(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 0;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_052_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 6;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_052_branch_variable(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_052_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_052_recursive(x - 2) : game_052_recursive(x - 1);
}

extern "C" int game_052_kernel(int x) {
    int total = 0;
    total += game_052_tiny_0(0);
    total += game_052_branch_1(x & 3, x & 7);
    total += game_052_medium_2(x & 7);
    total += game_052_large_b(3);
    total += (game_052_branch_variable(0, x & 7)) & 255;
    total += game_052_recursive(1);
    total += game_052_tiny_6(6);
    total += game_052_branch_7(x & 3, x & 7);
    total += game_052_medium_0(x & 7);
    total += (game_052_large_b(9)) & 255;
    total += game_052_branch_variable(2, x & 7);
    total += game_052_recursive(3);
    total += game_052_tiny_4(12);
    total += game_052_branch_5(x & 3, x & 7);
    total += (game_052_medium_6(x & 7)) & 255;
    total += game_052_large_b(2);
    return total;
}
