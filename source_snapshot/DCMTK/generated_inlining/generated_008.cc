// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=2, argument_pattern=0, body_shape=2, driver_shape=0, size_profile=0. Design space=4096.

static int game_008_tiny_0(int x) { return (x * 6) + 2; }

static int game_008_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 11;
    return out;
}

static int game_008_medium_0(int x) {
    int y = x + 11;
    y = (y * 5) ^ (y >> 1);
    y += 8;
    return y;
}

static int game_008_tiny_1(int x) { return (x * 2) + 3; }

static int game_008_branch_1(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_008_medium_1(int x) {
    int y = x + 12;
    y = (y * 6) ^ (y >> 1);
    y += 9;
    return y;
}

static int game_008_tiny_2(int x) { return (x * 3) + 4; }

static int game_008_branch_2(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_008_medium_2(int x) {
    int y = x + 13;
    y = (y * 2) ^ (y >> 1);
    y += 10;
    return y;
}

static int game_008_tiny_3(int x) { return (x * 4) + 5; }

static int game_008_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 2;
    case 1: return x ^ 16;
    case 2: return x * 5;
    default: return x - 5;
    }
}

static int game_008_medium_3(int x) {
    int y = x + 3;
    y = (y * 3) ^ (y >> 1);
    y += 11;
    return y;
}

static int game_008_tiny_4(int x) { return (x * 5) + 6; }

static int game_008_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 15;
    return out;
}

static int game_008_medium_4(int x) {
    int y = x + 4;
    y = (y * 4) ^ (y >> 1);
    y += 12;
    return y;
}

static int game_008_tiny_5(int x) { return (x * 6) + 0; }

static int game_008_branch_5(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_008_medium_5(int x) {
    int y = x + 5;
    y = (y * 5) ^ (y >> 1);
    y += 13;
    return y;
}

static int game_008_tiny_6(int x) { return (x * 2) + 1; }

static int game_008_branch_6(int mode, int x) {
    if (mode == 0) return x + 6;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_008_medium_6(int x) {
    int y = x + 6;
    y = (y * 6) ^ (y >> 1);
    y += 14;
    return y;
}

static int game_008_tiny_7(int x) { return (x * 3) + 2; }

static int game_008_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 6;
    case 1: return x ^ 20;
    case 2: return x * 3;
    default: return x - 2;
    }
}

static int game_008_medium_7(int x) {
    int y = x + 7;
    y = (y * 2) ^ (y >> 1);
    y += 15;
    return y;
}

static int game_008_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 3;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 1;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_008_large_b(int x) {
    int s = x;
    s += (x & 3) * 4;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 5;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 6;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 7;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    return s;
}

static int game_008_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 10;
    case 1: return x ^ 13;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int game_008_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_008_recursive(x - 1);
}

extern "C" int game_008_entry(int x) {
    int total = 0;
    total += game_008_tiny_0(x + 0);
    total += game_008_tiny_1(x + 1);
    total += game_008_tiny_2(x + 2);
    total += game_008_recursive(3);
    total += game_008_tiny_4(x + 4);
    total += game_008_tiny_5(x + 5);
    total += game_008_tiny_6(x + 6);
    total += game_008_recursive(3);
    total += game_008_large_a(x + 8);
    total += game_008_large_b(x + 9);
    total += game_008_large_a(x + 10);
    total += game_008_recursive(3);
    total += game_008_branch_variable(x & 3, x + 12);
    total += game_008_branch_variable(x & 3, x + 13);
    total += game_008_recursive(2);
    total += game_008_recursive(3);
    return total;
}
