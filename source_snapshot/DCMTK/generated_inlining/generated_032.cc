// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=0, argument_pattern=2, body_shape=0, driver_shape=2, size_profile=0. Design space=4096.

static int game_032_tiny_0(int x) { return x + 33; }

static int game_032_branch_0(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_032_medium_0(int x) {
    int y = x + 13;
    if (x & 1) y += x >> 1;
    else y -= 5;
    return y;
}

static int game_032_tiny_1(int x) { return x + 34; }

static int game_032_branch_1(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 21;
    case 2: return x * 3;
    default: return x - 6;
    }
}

static int game_032_medium_1(int x) {
    int y = x + 3;
    if (x & 1) y += x >> 1;
    else y -= 6;
    return y;
}

static int game_032_tiny_2(int x) { return x + 35; }

static int game_032_branch_2(int mode, int x) {
    int out = x;
    if (mode & 1) out += 3;
    if (mode & 2) out ^= 18;
    return out;
}

static int game_032_medium_2(int x) {
    int y = x + 4;
    if (x & 1) y += x >> 1;
    else y -= 7;
    return y;
}

static int game_032_tiny_3(int x) { return x + 36; }

static int game_032_branch_3(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_032_medium_3(int x) {
    int y = x + 5;
    if (x & 1) y += x >> 1;
    else y -= 8;
    return y;
}

static int game_032_tiny_4(int x) { return x + 37; }

static int game_032_branch_4(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_032_medium_4(int x) {
    int y = x + 6;
    if (x & 1) y += x >> 1;
    else y -= 0;
    return y;
}

static int game_032_tiny_5(int x) { return x + 38; }

static int game_032_branch_5(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 8;
    case 2: return x * 4;
    default: return x - 3;
    }
}

static int game_032_medium_5(int x) {
    int y = x + 7;
    if (x & 1) y += x >> 1;
    else y -= 1;
    return y;
}

static int game_032_tiny_6(int x) { return x + 39; }

static int game_032_branch_6(int mode, int x) {
    int out = x;
    if (mode & 1) out += 7;
    if (mode & 2) out ^= 3;
    return out;
}

static int game_032_medium_6(int x) {
    int y = x + 8;
    if (x & 1) y += x >> 1;
    else y -= 2;
    return y;
}

static int game_032_tiny_7(int x) { return x + 40; }

static int game_032_branch_7(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_032_medium_7(int x) {
    int y = x + 9;
    if (x & 1) y += x >> 1;
    else y -= 3;
    return y;
}

static int game_032_large_a(int x) {
    int s = x;
    s = (s * 3) + 32;
    s ^= (s >> 1);
    s = (s * 4) + 33;
    s ^= (s >> 2);
    s = (s * 5) + 34;
    s ^= (s >> 3);
    s = (s * 6) + 35;
    s ^= (s >> 1);
    s = (s * 7) + 36;
    s ^= (s >> 2);
    s = (s * 8) + 37;
    s ^= (s >> 3);
    s = (s * 9) + 38;
    s ^= (s >> 1);
    s = (s * 10) + 39;
    s ^= (s >> 2);
    return s;
}

static int game_032_large_b(int x) {
    int s = x;
    for (int i = 0; i < 8; ++i) {
        s += (x ^ i) + 10;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_032_branch_variable(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_032_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_032_recursive(x - 1);
}

extern "C" int game_032_step(int x) {
    int total = 0;
    total += game_032_tiny_0(0);
    total += game_032_tiny_1(x + 1);
    if ((x + 2) & 1) total += game_032_tiny_2(2);
    total += game_032_tiny_3(x + 3);
    total += game_032_tiny_4(4);
    if ((x + 5) & 1) total += game_032_tiny_5(x + 5);
    total += game_032_tiny_6(6);
    total += game_032_tiny_7(x + 7);
    if ((x + 8) & 1) total += game_032_large_a(1);
    total += game_032_large_b(x + 9);
    total += game_032_large_a(3);
    if ((x + 11) & 1) total += game_032_large_b(x + 11);
    total += game_032_branch_variable(0, 5);
    total += game_032_branch_variable(1, x + 13);
    if ((x + 14) & 1) total += game_032_recursive(2);
    total += game_032_recursive(3);
    return total;
}
