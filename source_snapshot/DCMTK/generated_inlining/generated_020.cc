// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=1, argument_pattern=1, body_shape=1, driver_shape=1, size_profile=0. Design space=4096.

static int game_020_tiny_0(int x) { return x ^ 21; }

static int game_020_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 8;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int game_020_medium_0(int x) {
    int y = x + 12;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_1(int x) { return x ^ 22; }

static int game_020_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 5;
    return out;
}

static int game_020_medium_1(int x) {
    int y = x + 13;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_2(int x) { return x ^ 23; }

static int game_020_branch_2(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_020_medium_2(int x) {
    int y = x + 3;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_3(int x) { return x ^ 24; }

static int game_020_branch_3(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int game_020_medium_3(int x) {
    int y = x + 4;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_4(int x) { return x ^ 25; }

static int game_020_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 12;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int game_020_medium_4(int x) {
    int y = x + 5;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_5(int x) { return x ^ 26; }

static int game_020_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 9;
    return out;
}

static int game_020_medium_5(int x) {
    int y = x + 6;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_6(int x) { return x ^ 27; }

static int game_020_branch_6(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_020_medium_6(int x) {
    int y = x + 7;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_020_tiny_7(int x) { return x ^ 28; }

static int game_020_branch_7(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_020_medium_7(int x) {
    int y = x + 8;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_020_large_a(int x) {
    int s = x;
    for (int i = 0; i < 4; ++i) {
        s += (x ^ i) + 7;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_020_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 2;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_020_branch_variable(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_020_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_020_recursive(x - 2) : game_020_recursive(x - 1);
}

extern "C" int game_020_dispatch(int x) {
    int total = 0;
    total += game_020_tiny_0(9);
    total += game_020_branch_1(1, 10);
    total += game_020_medium_2(0);
    total ^=  game_020_large_b(1);
    total += game_020_branch_variable(1, 2);
    total += game_020_recursive(1);
    total += game_020_tiny_6(4);
    total ^=  game_020_branch_7(1, 5);
    total += game_020_medium_0(6);
    total += game_020_large_b(7);
    total += game_020_branch_variable(1, 8);
    total ^=  game_020_recursive(3);
    total += game_020_tiny_4(10);
    total += game_020_branch_5(1, 0);
    total += game_020_medium_6(1);
    total ^=  game_020_large_b(2);
    return total;
}
