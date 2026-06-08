// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=3, argument_pattern=3, body_shape=3, driver_shape=3, size_profile=0. Design space=4096.

static int game_060_tiny_0(int x) { return x - 6; }

static int game_060_branch_0(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_060_medium_0(int x) {
    int y = x + 8;
    y = (y << 2) - 8;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_1(int x) { return x - 7; }

static int game_060_branch_1(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_060_medium_1(int x) {
    int y = x + 9;
    y = (y << 2) - 9;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_2(int x) { return x - 8; }

static int game_060_branch_2(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 9;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 7;
    }
}

static int game_060_medium_2(int x) {
    int y = x + 10;
    y = (y << 2) - 10;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_3(int x) { return x - 9; }

static int game_060_branch_3(int mode, int x) {
    int out = x;
    if (mode & 1) out += 8;
    if (mode & 2) out ^= 9;
    return out;
}

static int game_060_medium_3(int x) {
    int y = x + 11;
    y = (y << 2) - 11;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_4(int x) { return x - 10; }

static int game_060_branch_4(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_060_medium_4(int x) {
    int y = x + 12;
    y = (y << 2) - 12;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_5(int x) { return x - 0; }

static int game_060_branch_5(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 3;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_060_medium_5(int x) {
    int y = x + 13;
    y = (y << 2) - 0;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_6(int x) { return x - 1; }

static int game_060_branch_6(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 20;
    case 2: return x * 3;
    default: return x - 4;
    }
}

static int game_060_medium_6(int x) {
    int y = x + 3;
    y = (y << 2) - 1;
    y ^= (x & 15);
    return y;
}

static int game_060_tiny_7(int x) { return x - 2; }

static int game_060_branch_7(int mode, int x) {
    int out = x;
    if (mode & 1) out += 4;
    if (mode & 2) out ^= 13;
    return out;
}

static int game_060_medium_7(int x) {
    int y = x + 4;
    y = (y << 2) - 2;
    y ^= (x & 15);
    return y;
}

static int game_060_large_a(int x) {
    int s = x;
    s += (x & 3) * 6;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 7;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 8;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 9;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int game_060_large_b(int x) {
    int s = x;
    s = (s * 3) + 77;
    s ^= (s >> 1);
    s = (s * 4) + 78;
    s ^= (s >> 2);
    s = (s * 5) + 79;
    s ^= (s >> 3);
    s = (s * 6) + 80;
    s ^= (s >> 1);
    s = (s * 7) + 81;
    s ^= (s >> 2);
    s = (s * 8) + 82;
    s ^= (s >> 3);
    s = (s * 9) + 83;
    s ^= (s >> 1);
    s = (s * 10) + 84;
    s ^= (s >> 2);
    return s;
}

static int game_060_branch_variable(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 6;
    return out;
}

static int game_060_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_060_recursive(x - 2) : game_060_recursive(x - 1);
}

extern "C" int game_060_kernel(int x) {
    int total = 0;
    total += game_060_branch_variable(0, 8);
    total += game_060_tiny_1(x & 7);
    total += game_060_tiny_2(x & 7);
    total += game_060_tiny_3(11);
    total += (game_060_tiny_4(x & 7)) & 255;
    total += game_060_branch_variable(x & 3, x & 7);
    total += game_060_tiny_6(1);
    total += game_060_tiny_7(x & 7);
    total += game_060_large_a(x & 7);
    total += (game_060_large_b(4)) & 255;
    total += game_060_branch_variable(2, x & 7);
    total += game_060_large_b(x & 7);
    total += game_060_branch_variable(0, 7);
    total += game_060_branch_variable(x & 3, x & 7);
    total += (game_060_recursive(2)) & 255;
    total += game_060_branch_variable(x & 3, 10);
    return total;
}
