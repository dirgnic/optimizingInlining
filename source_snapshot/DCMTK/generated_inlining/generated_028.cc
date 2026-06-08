// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=3, argument_pattern=1, body_shape=3, driver_shape=1, size_profile=0. Design space=4096.

static int game_028_tiny_0(int x) { return x - 7; }

static int game_028_branch_0(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_028_medium_0(int x) {
    int y = x + 9;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_1(int x) { return x - 8; }

static int game_028_branch_1(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_028_medium_1(int x) {
    int y = x + 10;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_2(int x) { return x - 9; }

static int game_028_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 18;
    case 2: return x * 3;
    default: return x - 3;
    }
}

static int game_028_medium_2(int x) {
    int y = x + 11;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_3(int x) { return x - 10; }

static int game_028_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 15;
    return out;
}

static int game_028_medium_3(int x) {
    int y = x + 12;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_4(int x) { return x - 0; }

static int game_028_branch_4(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_028_medium_4(int x) {
    int y = x + 13;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_5(int x) { return x - 1; }

static int game_028_branch_5(int mode, int x) {
    if (mode == 0) return x + 7;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int game_028_medium_5(int x) {
    int y = x + 3;
    y = (y << 2) - 7;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_6(int x) { return x - 2; }

static int game_028_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 5;
    case 2: return x * 4;
    default: return x - 7;
    }
}

static int game_028_medium_6(int x) {
    int y = x + 4;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int game_028_tiny_7(int x) { return x - 3; }

static int game_028_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 19;
    return out;
}

static int game_028_medium_7(int x) {
    int y = x + 5;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int game_028_large_a(int x) {
    int s = x;
    s += (x & 3) * 7;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 8;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 9;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 10;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int game_028_large_b(int x) {
    int s = x;
    s = (s * 3) + 45;
    s ^= (s >> 1);
    s = (s * 4) + 46;
    s ^= (s >> 2);
    s = (s * 5) + 47;
    s ^= (s >> 3);
    s = (s * 6) + 48;
    s ^= (s >> 1);
    s = (s * 7) + 49;
    s ^= (s >> 2);
    s = (s * 8) + 50;
    s ^= (s >> 3);
    s = (s * 9) + 51;
    s ^= (s >> 1);
    s = (s * 10) + 52;
    s ^= (s >> 2);
    return s;
}

static int game_028_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 12;
    return out;
}

static int game_028_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_028_recursive(x - 2) : game_028_recursive(x - 1);
}

extern "C" int game_028_dispatch(int x) {
    int total = 0;
    total += game_028_branch_variable(0, 6);
    total += game_028_tiny_1(7);
    total += game_028_tiny_2(8);
    total ^=  game_028_tiny_3(9);
    total += game_028_tiny_4(10);
    total += game_028_branch_variable(2, 0);
    total += game_028_tiny_6(1);
    total ^=  game_028_tiny_7(2);
    total += game_028_large_a(3);
    total += game_028_large_b(4);
    total += game_028_branch_variable(1, 5);
    total ^=  game_028_large_b(6);
    total += game_028_branch_variable(0, 7);
    total += game_028_branch_variable(1, 8);
    total += game_028_recursive(2);
    total ^=  game_028_branch_variable(0, 10);
    return total;
}
