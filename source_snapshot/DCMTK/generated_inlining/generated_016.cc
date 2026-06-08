// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=0, argument_pattern=1, body_shape=0, driver_shape=1, size_profile=0. Design space=4096.

static int game_016_tiny_0(int x) { return x + 17; }

static int game_016_branch_0(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_016_medium_0(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int game_016_tiny_1(int x) { return x + 18; }

static int game_016_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 5;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int game_016_medium_1(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int game_016_tiny_2(int x) { return x + 19; }

static int game_016_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 21;
    return out;
}

static int game_016_medium_2(int x) {
    int y = x + 10;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int game_016_tiny_3(int x) { return x + 20; }

static int game_016_branch_3(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_016_medium_3(int x) {
    int y = x + 11;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int game_016_tiny_4(int x) { return x + 21; }

static int game_016_branch_4(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_016_medium_4(int x) {
    int y = x + 12;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int game_016_tiny_5(int x) { return x + 22; }

static int game_016_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 12;
    case 1: return x ^ 9;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int game_016_medium_5(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int game_016_tiny_6(int x) { return x + 23; }

static int game_016_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 6;
    return out;
}

static int game_016_medium_6(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 4;
    return y;
}

static int game_016_tiny_7(int x) { return x + 24; }

static int game_016_branch_7(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_016_medium_7(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int game_016_large_a(int x) {
    int s = x;
    s = (s * 3) + 16;
    s ^= (s >> 1);
    s = (s * 4) + 17;
    s ^= (s >> 2);
    s = (s * 5) + 18;
    s ^= (s >> 3);
    s = (s * 6) + 19;
    s ^= (s >> 1);
    s = (s * 7) + 20;
    s ^= (s >> 2);
    s = (s * 8) + 21;
    s ^= (s >> 3);
    s = (s * 9) + 22;
    s ^= (s >> 1);
    s = (s * 10) + 23;
    s ^= (s >> 2);
    return s;
}

static int game_016_large_b(int x) {
    int s = x;
    for (int i = 0; i < 7; ++i) {
        s += (x ^ i) + 7;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_016_branch_variable(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_016_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_016_recursive(x - 1);
}

extern "C" int game_016_dispatch(int x) {
    int total = 0;
    total += game_016_tiny_0(5);
    total += game_016_tiny_1(6);
    total += game_016_tiny_2(7);
    total ^=  game_016_tiny_3(8);
    total += game_016_tiny_4(9);
    total += game_016_tiny_5(10);
    total += game_016_tiny_6(0);
    total ^=  game_016_tiny_7(1);
    total += game_016_large_a(2);
    total += game_016_large_b(3);
    total += game_016_large_a(4);
    total ^=  game_016_large_b(5);
    total += game_016_branch_variable(0, 6);
    total += game_016_branch_variable(1, 7);
    total += game_016_recursive(2);
    total ^=  game_016_recursive(3);
    return total;
}
