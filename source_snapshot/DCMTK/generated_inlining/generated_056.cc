// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=2, argument_pattern=3, body_shape=2, driver_shape=3, size_profile=0. Design space=4096.

static int game_056_tiny_0(int x) { return (x * 4) + 1; }

static int game_056_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 21;
    return out;
}

static int game_056_medium_0(int x) {
    int y = x + 4;
    y = (y * 3) ^ (y >> 1);
    y += 5;
    return y;
}

static int game_056_tiny_1(int x) { return (x * 5) + 2; }

static int game_056_branch_1(int mode, int x) {
    int t = x + 2;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_056_medium_1(int x) {
    int y = x + 5;
    y = (y * 4) ^ (y >> 1);
    y += 6;
    return y;
}

static int game_056_tiny_2(int x) { return (x * 6) + 3; }

static int game_056_branch_2(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 6;
    return x + mode;
}

static int game_056_medium_2(int x) {
    int y = x + 6;
    y = (y * 5) ^ (y >> 1);
    y += 7;
    return y;
}

static int game_056_tiny_3(int x) { return (x * 2) + 4; }

static int game_056_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 13;
    case 2: return x * 5;
    default: return x - 4;
    }
}

static int game_056_medium_3(int x) {
    int y = x + 7;
    y = (y * 6) ^ (y >> 1);
    y += 8;
    return y;
}

static int game_056_tiny_4(int x) { return (x * 3) + 5; }

static int game_056_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 6;
    return out;
}

static int game_056_medium_4(int x) {
    int y = x + 8;
    y = (y * 2) ^ (y >> 1);
    y += 9;
    return y;
}

static int game_056_tiny_5(int x) { return (x * 4) + 6; }

static int game_056_branch_5(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_056_medium_5(int x) {
    int y = x + 9;
    y = (y * 3) ^ (y >> 1);
    y += 10;
    return y;
}

static int game_056_tiny_6(int x) { return (x * 5) + 0; }

static int game_056_branch_6(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_056_medium_6(int x) {
    int y = x + 10;
    y = (y * 4) ^ (y >> 1);
    y += 11;
    return y;
}

static int game_056_tiny_7(int x) { return (x * 6) + 1; }

static int game_056_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 17;
    case 2: return x * 3;
    default: return x - 1;
    }
}

static int game_056_medium_7(int x) {
    int y = x + 11;
    y = (y * 5) ^ (y >> 1);
    y += 12;
    return y;
}

static int game_056_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 3;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 0;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_056_large_b(int x) {
    int s = x;
    s += (x & 3) * 8;
    if ((s % 2) == 0) s -= 3;
    else s += 1;
    s += (x & 4) * 9;
    if ((s % 3) == 0) s -= 4;
    else s += 3;
    s += (x & 5) * 10;
    if ((s % 4) == 0) s -= 5;
    else s += 5;
    s += (x & 6) * 11;
    if ((s % 5) == 0) s -= 6;
    else s += 7;
    return s;
}

static int game_056_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 3;
    case 1: return x ^ 10;
    case 2: return x * 5;
    default: return x - 1;
    }
}

static int game_056_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_056_recursive(x - 1);
}

extern "C" int game_056_kernel(int x) {
    int total = 0;
    total += game_056_tiny_0(4);
    total += game_056_tiny_1(x & 7);
    total += game_056_tiny_2(x & 7);
    total += game_056_recursive(3);
    total += (game_056_tiny_4(x & 7)) & 255;
    total += game_056_tiny_5(x & 7);
    total += game_056_tiny_6(10);
    total += game_056_recursive(3);
    total += game_056_large_a(x & 7);
    total += (game_056_large_b(0)) & 255;
    total += game_056_large_a(x & 7);
    total += game_056_recursive(3);
    total += game_056_branch_variable(0, 3);
    total += game_056_branch_variable(x & 3, x & 7);
    total += (game_056_recursive(2)) & 255;
    total += game_056_recursive(3);
    return total;
}
