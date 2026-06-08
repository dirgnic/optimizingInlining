// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=1, argument_pattern=0, body_shape=2, driver_shape=0, size_profile=1. Design space=4096.

static int game_068_tiny_0(int x) { return (x * 6) + 6; }

static int game_068_branch_0(int mode, int x) {
    int out = x;
    if (mode & 1) out += 5;
    if (mode & 2) out ^= 14;
    return out;
}

static int game_068_medium_0(int x) {
    int y = x + 5;
    y = (y * 5) ^ (y >> 1);
    y += 0;
    y += (x & 3) * 6;
    return y;
}

static int game_068_tiny_1(int x) { return (x * 2) + 0; }

static int game_068_branch_1(int mode, int x) {
    int t = x + 4;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_068_medium_1(int x) {
    int y = x + 6;
    y = (y * 6) ^ (y >> 1);
    y += 1;
    y += (x & 3) * 7;
    return y;
}

static int game_068_tiny_2(int x) { return (x * 3) + 1; }

static int game_068_branch_2(int mode, int x) {
    if (mode == 0) return x + 8;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 3;
    return x + mode;
}

static int game_068_medium_2(int x) {
    int y = x + 7;
    y = (y * 2) ^ (y >> 1);
    y += 2;
    y += (x & 3) * 1;
    return y;
}

static int game_068_tiny_3(int x) { return (x * 4) + 2; }

static int game_068_branch_3(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 7;
    case 1: return x ^ 8;
    case 2: return x * 5;
    default: return x - 2;
    }
}

static int game_068_medium_3(int x) {
    int y = x + 8;
    y = (y * 3) ^ (y >> 1);
    y += 3;
    y += (x & 3) * 2;
    return y;
}

static int game_068_tiny_4(int x) { return (x * 5) + 3; }

static int game_068_branch_4(int mode, int x) {
    int out = x;
    if (mode & 1) out += 1;
    if (mode & 2) out ^= 18;
    return out;
}

static int game_068_medium_4(int x) {
    int y = x + 9;
    y = (y * 4) ^ (y >> 1);
    y += 4;
    y += (x & 3) * 3;
    return y;
}

static int game_068_tiny_5(int x) { return (x * 6) + 4; }

static int game_068_branch_5(int mode, int x) {
    int t = x + 3;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_068_medium_5(int x) {
    int y = x + 10;
    y = (y * 5) ^ (y >> 1);
    y += 5;
    y += (x & 3) * 4;
    return y;
}

static int game_068_tiny_6(int x) { return (x * 2) + 5; }

static int game_068_branch_6(int mode, int x) {
    if (mode == 0) return x + 3;
    if (mode == 1) return x * 4;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_068_medium_6(int x) {
    int y = x + 11;
    y = (y * 6) ^ (y >> 1);
    y += 6;
    y += (x & 3) * 5;
    return y;
}

static int game_068_tiny_7(int x) { return (x * 3) + 6; }

static int game_068_branch_7(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 12;
    case 2: return x * 3;
    default: return x - 6;
    }
}

static int game_068_medium_7(int x) {
    int y = x + 12;
    y = (y * 2) ^ (y >> 1);
    y += 7;
    y += (x & 3) * 6;
    return y;
}

static int game_068_large_a(int x) {
    int s = x;
    int limit = (x & 3) + 4;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 5;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_068_large_b(int x) {
    int s = x;
    s += (x & 3) * 9;
    if ((s % 2) == 0) s -= 0;
    else s += 1;
    s += (x & 4) * 10;
    if ((s % 3) == 0) s -= 1;
    else s += 3;
    s += (x & 5) * 11;
    if ((s % 4) == 0) s -= 2;
    else s += 5;
    s += (x & 6) * 12;
    if ((s % 5) == 0) s -= 3;
    else s += 7;
    s += (x & 7) * 13;
    if ((s % 6) == 0) s -= 4;
    else s += 9;
    s += (x & 8) * 14;
    if ((s % 7) == 0) s -= 5;
    else s += 11;
    s += (x & 9) * 15;
    if ((s % 8) == 0) s -= 6;
    else s += 13;
    return s;
}

static int game_068_branch_variable(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 5;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int game_068_recursive(int x) {
    if (x <= 0) return 0;
    return x + game_068_recursive(x - 1);
}

extern "C" int game_068_entry(int x) {
    int total = 0;
    total += game_068_tiny_0(x + 0);
    total += game_068_branch_1(x & 3, x + 1);
    total += game_068_medium_2(x + 2);
    total += game_068_large_b(x + 3);
    total += game_068_branch_variable(x & 3, x + 4);
    total += game_068_recursive(1);
    total += game_068_tiny_6(x + 6);
    total += game_068_branch_7(x & 3, x + 7);
    total += game_068_medium_0(x + 8);
    total += game_068_large_b(x + 9);
    total += game_068_branch_variable(x & 3, x + 10);
    total += game_068_recursive(3);
    total += game_068_tiny_4(x + 12);
    total += game_068_branch_5(x & 3, x + 13);
    total += game_068_medium_6(x + 14);
    total += game_068_large_b(x + 15);
    return total;
}
