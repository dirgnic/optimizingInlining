// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=1, argument_pattern=2, body_shape=1, driver_shape=2, size_profile=0. Design space=4096.

static int game_036_tiny_0(int x) { return x ^ 37; }

static int game_036_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 7;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int game_036_medium_0(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_1(int x) { return x ^ 38; }

static int game_036_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 21;
    return out;
}

static int game_036_medium_1(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_2(int x) { return x ^ 39; }

static int game_036_branch_2(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_036_medium_2(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_3(int x) { return x ^ 40; }

static int game_036_branch_3(int mode, int x) {
    if (mode == 0) return x + 4;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_036_medium_3(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_4(int x) { return x ^ 41; }

static int game_036_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 11;
    case 2: return x * 4;
    default: return x - 6;
    }
}

static int game_036_medium_4(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_5(int x) { return x ^ 42; }

static int game_036_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 6;
    return out;
}

static int game_036_medium_5(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_6(int x) { return x ^ 43; }

static int game_036_branch_6(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_036_medium_6(int x) {
    int y = x + 12;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_036_tiny_7(int x) { return x ^ 44; }

static int game_036_branch_7(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int game_036_medium_7(int x) {
    int y = x + 13;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_036_large_a(int x) {
    int s = x;
    for (int i = 0; i < 5; ++i) {
        s += (x ^ i) + 10;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_036_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_036_branch_variable(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_036_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_036_recursive(x - 2) : game_036_recursive(x - 1);
}

extern "C" int game_036_step(int x) {
    int total = 0;
    total += game_036_tiny_0(0);
    total += game_036_branch_1(1, x + 1);
    if ((x + 2) & 1) total += game_036_medium_2(2);
    total += game_036_large_b(x + 3);
    total += game_036_branch_variable(1, 4);
    if ((x + 5) & 1) total += game_036_recursive(1);
    total += game_036_tiny_6(6);
    total += game_036_branch_7(1, x + 7);
    if ((x + 8) & 1) total += game_036_medium_0(1);
    total += game_036_large_b(x + 9);
    total += game_036_branch_variable(1, 3);
    if ((x + 11) & 1) total += game_036_recursive(3);
    total += game_036_tiny_4(5);
    total += game_036_branch_5(1, x + 13);
    if ((x + 14) & 1) total += game_036_medium_6(0);
    total += game_036_large_b(x + 15);
    return total;
}
