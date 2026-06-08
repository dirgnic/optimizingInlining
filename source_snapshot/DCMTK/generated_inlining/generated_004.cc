// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=1, argument_pattern=0, body_shape=1, driver_shape=0, size_profile=0. Design space=4096.

static int game_004_tiny_0(int x) { return x ^ 5; }

static int game_004_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 9;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int game_004_medium_0(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_1(int x) { return x ^ 6; }

static int game_004_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 8;
    return out;
}

static int game_004_medium_1(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_2(int x) { return x ^ 7; }

static int game_004_branch_2(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_004_medium_2(int x) {
    int y = x + 9;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_3(int x) { return x ^ 8; }

static int game_004_branch_3(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_004_medium_3(int x) {
    int y = x + 10;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_4(int x) { return x ^ 9; }

static int game_004_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 13;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int game_004_medium_4(int x) {
    int y = x + 11;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_5(int x) { return x ^ 10; }

static int game_004_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 12;
    return out;
}

static int game_004_medium_5(int x) {
    int y = x + 12;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_6(int x) { return x ^ 11; }

static int game_004_branch_6(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_004_medium_6(int x) {
    int y = x + 13;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    return y;
}

static int game_004_tiny_7(int x) { return x ^ 12; }

static int game_004_branch_7(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_004_medium_7(int x) {
    int y = x + 3;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    return y;
}

static int game_004_large_a(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 4;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_004_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 0;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_004_branch_variable(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_004_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_004_recursive(x - 2) : game_004_recursive(x - 1);
}

extern "C" int game_004_entry(int x) {
    int total = 0;
    total += game_004_tiny_0(x + 0);
    total += game_004_branch_1(x & 3, x + 1);
    total += game_004_medium_2(x + 2);
    total += game_004_large_b(x + 3);
    total += game_004_branch_variable(x & 3, x + 4);
    total += game_004_recursive(1);
    total += game_004_tiny_6(x + 6);
    total += game_004_branch_7(x & 3, x + 7);
    total += game_004_medium_0(x + 8);
    total += game_004_large_b(x + 9);
    total += game_004_branch_variable(x & 3, x + 10);
    total += game_004_recursive(3);
    total += game_004_tiny_4(x + 12);
    total += game_004_branch_5(x & 3, x + 13);
    total += game_004_medium_6(x + 14);
    total += game_004_large_b(x + 15);
    return total;
}
