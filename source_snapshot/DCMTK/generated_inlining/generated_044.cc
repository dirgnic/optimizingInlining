// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=3, argument_pattern=2, body_shape=3, driver_shape=2, size_profile=0. Design space=4096.

static int game_044_tiny_0(int x) { return x - 1; }

static int game_044_branch_0(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_044_medium_0(int x) {
    int y = x + 3;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_1(int x) { return x - 2; }

static int game_044_branch_1(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_044_medium_1(int x) {
    int y = x + 4;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_2(int x) { return x - 3; }

static int game_044_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 17;
    case 2: return x * 4;
    default: return x - 5;
    }
}

static int game_044_medium_2(int x) {
    int y = x + 5;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_3(int x) { return x - 4; }

static int game_044_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 12;
    return out;
}

static int game_044_medium_3(int x) {
    int y = x + 6;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_4(int x) { return x - 5; }

static int game_044_branch_4(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_044_medium_4(int x) {
    int y = x + 7;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_5(int x) { return x - 6; }

static int game_044_branch_5(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_044_medium_5(int x) {
    int y = x + 8;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_6(int x) { return x - 7; }

static int game_044_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 8;
    case 1: return x ^ 21;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int game_044_medium_6(int x) {
    int y = x + 9;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int game_044_tiny_7(int x) { return x - 8; }

static int game_044_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 16;
    return out;
}

static int game_044_medium_7(int x) {
    int y = x + 10;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int game_044_large_a(int x) {
    int s = x;
    s += (x & 3) * 1;
    if ((s % 2) == 0) s -= 4;
    else s += 1;
    s += (x & 4) * 2;
    if ((s % 3) == 0) s -= 5;
    else s += 3;
    s += (x & 5) * 3;
    if ((s % 4) == 0) s -= 6;
    else s += 5;
    s += (x & 6) * 4;
    if ((s % 5) == 0) s -= 7;
    else s += 7;
    return s;
}

static int game_044_large_b(int x) {
    int s = x;
    s = (s * 3) + 61;
    s ^= (s >> 1);
    s = (s * 4) + 62;
    s ^= (s >> 2);
    s = (s * 5) + 63;
    s ^= (s >> 3);
    s = (s * 6) + 64;
    s ^= (s >> 1);
    s = (s * 7) + 65;
    s ^= (s >> 2);
    s = (s * 8) + 66;
    s ^= (s >> 3);
    s = (s * 9) + 67;
    s ^= (s >> 1);
    s = (s * 10) + 68;
    s ^= (s >> 2);
    return s;
}

static int game_044_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 9;
    return out;
}

static int game_044_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_044_recursive(x - 2) : game_044_recursive(x - 1);
}

extern "C" int game_044_step(int x) {
    int total = 0;
    total += game_044_branch_variable(0, 0);
    total += game_044_tiny_1(x + 1);
    if ((x + 2) & 1) total += game_044_tiny_2(2);
    total += game_044_tiny_3(x + 3);
    total += game_044_tiny_4(4);
    if ((x + 5) & 1) total += game_044_branch_variable(2, x + 5);
    total += game_044_tiny_6(6);
    total += game_044_tiny_7(x + 7);
    if ((x + 8) & 1) total += game_044_large_a(1);
    total += game_044_large_b(x + 9);
    total += game_044_branch_variable(1, 3);
    if ((x + 11) & 1) total += game_044_large_b(x + 11);
    total += game_044_branch_variable(0, 5);
    total += game_044_branch_variable(1, x + 13);
    if ((x + 14) & 1) total += game_044_recursive(2);
    total += game_044_branch_variable(0, x + 15);
    return total;
}
