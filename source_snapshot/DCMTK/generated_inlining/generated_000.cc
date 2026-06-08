// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=0, argument_pattern=0, body_shape=0, driver_shape=0, size_profile=0. Design space=4096.

static int game_000_tiny_0(int x) { return x + 1; }

static int game_000_branch_0(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_000_medium_0(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int game_000_tiny_1(int x) { return x + 2; }

static int game_000_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 6;
    case 2: return x * 4;
    default: return x - 2;
    }
}

static int game_000_medium_1(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int game_000_tiny_2(int x) { return x + 3; }

static int game_000_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 5;
    return out;
}

static int game_000_medium_2(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int game_000_tiny_3(int x) { return x + 4; }

static int game_000_branch_3(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_000_medium_3(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int game_000_tiny_4(int x) { return x + 5; }

static int game_000_branch_4(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_000_medium_4(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int game_000_tiny_5(int x) { return x + 6; }

static int game_000_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 10;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int game_000_medium_5(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int game_000_tiny_6(int x) { return x + 7; }

static int game_000_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 9;
    return out;
}

static int game_000_medium_6(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int game_000_tiny_7(int x) { return x + 8; }

static int game_000_branch_7(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_000_medium_7(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int game_000_large_a(int x) {
    int s = x;
    s = (s * 3) + 0;
    s ^= (s >> 1);
    s = (s * 4) + 1;
    s ^= (s >> 2);
    s = (s * 5) + 2;
    s ^= (s >> 3);
    s = (s * 6) + 3;
    s ^= (s >> 1);
    s = (s * 7) + 4;
    s ^= (s >> 2);
    s = (s * 8) + 5;
    s ^= (s >> 3);
    s = (s * 9) + 6;
    s ^= (s >> 1);
    s = (s * 10) + 7;
    s ^= (s >> 2);
    return s;
}

static int game_000_large_b(int x) {
    int s = x;
    for (int i = 0; i < 6; ++i) {
        s += (x ^ i) + 4;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_000_branch_variable(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_000_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_000_recursive(x - 1);
}

extern "C" int game_000_entry(int x) {
    int total = 0;
    total += game_000_tiny_0(x + 0);
    total += game_000_tiny_1(x + 1);
    total += game_000_tiny_2(x + 2);
    total += game_000_tiny_3(x + 3);
    total += game_000_tiny_4(x + 4);
    total += game_000_tiny_5(x + 5);
    total += game_000_tiny_6(x + 6);
    total += game_000_tiny_7(x + 7);
    total += game_000_large_a(x + 8);
    total += game_000_large_b(x + 9);
    total += game_000_large_a(x + 10);
    total += game_000_large_b(x + 11);
    total += game_000_branch_variable(x & 3, x + 12);
    total += game_000_branch_variable(x & 3, x + 13);
    total += game_000_recursive(2);
    total += game_000_recursive(3);
    return total;
}
