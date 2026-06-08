// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=3, argument_pattern=0, body_shape=3, driver_shape=0, size_profile=0. Design space=4096.

static int game_012_tiny_0(int x) { return x - 2; }

static int game_012_branch_0(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_012_medium_0(int x) {
    int y = x + 4;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_1(int x) { return x - 3; }

static int game_012_branch_1(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int game_012_medium_1(int x) {
    int y = x + 5;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_2(int x) { return x - 4; }

static int game_012_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 5;
    case 1: return x ^ 19;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int game_012_medium_2(int x) {
    int y = x + 6;
    y = (y << 2) - 1;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_3(int x) { return x - 5; }

static int game_012_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 18;
    return out;
}

static int game_012_medium_3(int x) {
    int y = x + 7;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_4(int x) { return x - 6; }

static int game_012_branch_4(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_012_medium_4(int x) {
    int y = x + 8;
    y = (y << 2) - 3;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_5(int x) { return x - 7; }

static int game_012_branch_5(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_012_medium_5(int x) {
    int y = x + 9;
    y = (y << 2) - 4;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_6(int x) { return x - 8; }

static int game_012_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 6;
    case 2: return x * 3;
    default: return x - 5;
    }
}

static int game_012_medium_6(int x) {
    int y = x + 10;
    y = (y << 2) - 5;
    y ^= (x & 15);
    return y;
}

static int game_012_tiny_7(int x) { return x - 9; }

static int game_012_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 3;
    return out;
}

static int game_012_medium_7(int x) {
    int y = x + 11;
    y = (y << 2) - 6;
    y ^= (x & 15);
    return y;
}

static int game_012_large_a(int x) {
    int s = x;
    s += (x & 3) * 2;
    if ((s % 2) == 0) s -= 2;
    else s += 1;
    s += (x & 4) * 3;
    if ((s % 3) == 0) s -= 3;
    else s += 3;
    s += (x & 5) * 4;
    if ((s % 4) == 0) s -= 4;
    else s += 5;
    s += (x & 6) * 5;
    if ((s % 5) == 0) s -= 5;
    else s += 7;
    return s;
}

static int game_012_large_b(int x) {
    int s = x;
    s = (s * 3) + 29;
    s ^= (s >> 1);
    s = (s * 4) + 30;
    s ^= (s >> 2);
    s = (s * 5) + 31;
    s ^= (s >> 3);
    s = (s * 6) + 32;
    s ^= (s >> 1);
    s = (s * 7) + 33;
    s ^= (s >> 2);
    s = (s * 8) + 34;
    s ^= (s >> 3);
    s = (s * 9) + 35;
    s ^= (s >> 1);
    s = (s * 10) + 36;
    s ^= (s >> 2);
    return s;
}

static int game_012_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 15;
    return out;
}

static int game_012_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_012_recursive(x - 2) : game_012_recursive(x - 1);
}

extern "C" int game_012_entry(int x) {
    int total = 0;
    total += game_012_branch_variable(x & 3, x + 0);
    total += game_012_tiny_1(x + 1);
    total += game_012_tiny_2(x + 2);
    total += game_012_tiny_3(x + 3);
    total += game_012_tiny_4(x + 4);
    total += game_012_branch_variable(x & 3, x + 5);
    total += game_012_tiny_6(x + 6);
    total += game_012_tiny_7(x + 7);
    total += game_012_large_a(x + 8);
    total += game_012_large_b(x + 9);
    total += game_012_branch_variable(x & 3, x + 10);
    total += game_012_large_b(x + 11);
    total += game_012_branch_variable(x & 3, x + 12);
    total += game_012_branch_variable(x & 3, x + 13);
    total += game_012_recursive(2);
    total += game_012_branch_variable(x & 3, x + 15);
    return total;
}
