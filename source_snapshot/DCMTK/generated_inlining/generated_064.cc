// Generated deterministic inlining benchmark module.
// Configuration: callee_profile=0, call_mix=0, argument_pattern=0, body_shape=1, driver_shape=0, size_profile=1. Design space=4096.

static int game_064_tiny_0(int x) { return x ^ 65; }

static int game_064_branch_0(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 11;
    case 1: return x ^ 18;
    case 2: return x * 4;
    default: return x - 2;
    }
}

static int game_064_medium_0(int x) {
    int y = x + 12;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 2;
    return y;
}

static int game_064_tiny_1(int x) { return x ^ 66; }

static int game_064_branch_1(int mode, int x) {
    int out = x;
    if (mode & 1) out += 2;
    if (mode & 2) out ^= 11;
    return out;
}

static int game_064_medium_1(int x) {
    int y = x + 13;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 3;
    return y;
}

static int game_064_tiny_2(int x) { return x ^ 67; }

static int game_064_branch_2(int mode, int x) {
    int t = x + 1;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_064_medium_2(int x) {
    int y = x + 3;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 4;
    return y;
}

static int game_064_tiny_3(int x) { return x ^ 68; }

static int game_064_branch_3(int mode, int x) {
    if (mode == 0) return x + 5;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 5;
    return x + mode;
}

static int game_064_medium_3(int x) {
    int y = x + 4;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 5;
    return y;
}

static int game_064_tiny_4(int x) { return x ^ 69; }

static int game_064_branch_4(int mode, int x) {
    switch (mode & 3) {
    case 0: return x + 4;
    case 1: return x ^ 5;
    case 2: return x * 5;
    default: return x - 6;
    }
}

static int game_064_medium_4(int x) {
    int y = x + 5;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 6;
    return y;
}

static int game_064_tiny_5(int x) { return x ^ 70; }

static int game_064_branch_5(int mode, int x) {
    int out = x;
    if (mode & 1) out += 6;
    if (mode & 2) out ^= 15;
    return out;
}

static int game_064_medium_5(int x) {
    int y = x + 6;
    for (int i = 0; i < 2; ++i) y += i + (x & 3);
    y += (x & 3) * 7;
    return y;
}

static int game_064_tiny_6(int x) { return x ^ 71; }

static int game_064_branch_6(int mode, int x) {
    int t = x + 0;
    return mode < 2 ? t * (mode + 1) : t - mode;
}

static int game_064_medium_6(int x) {
    int y = x + 7;
    for (int i = 0; i < 3; ++i) y += i + (x & 3);
    y += (x & 3) * 1;
    return y;
}

static int game_064_tiny_7(int x) { return x ^ 72; }

static int game_064_branch_7(int mode, int x) {
    if (mode == 0) return x + 9;
    if (mode == 1) return x * 5;
    if (mode == 2) return x - 4;
    return x + mode;
}

static int game_064_medium_7(int x) {
    int y = x + 8;
    for (int i = 0; i < 4; ++i) y += i + (x & 3);
    y += (x & 3) * 2;
    return y;
}

static int game_064_large_a(int x) {
    int s = x;
    for (int i = 0; i < 10; ++i) {
        s += (x ^ i) + 12;
        s = (s << 1) ^ (s >> 3);
    }
    return s;
}

static int game_064_large_b(int x) {
    int s = x;
    int limit = (x & 3) + 5;
    for (int i = 0; i < limit; ++i) {
        s += (i * i) - 4;
        if ((s & 1) == 0) s ^= i + x;
    }
    return s;
}

static int game_064_branch_variable(int mode, int x) {
    if (mode == 0) return x + 2;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 7;
    return x + mode;
}

static int game_064_recursive(int x) {
    if (x <= 0) return 0;
    return (x & 1) ? x + game_064_recursive(x - 2) : game_064_recursive(x - 1);
}

extern "C" int game_064_entry(int x) {
    int total = 0;
    total += game_064_tiny_0(x + 0);
    total += game_064_tiny_1(x + 1);
    total += game_064_tiny_2(x + 2);
    total += game_064_tiny_3(x + 3);
    total += game_064_tiny_4(x + 4);
    total += game_064_tiny_5(x + 5);
    total += game_064_tiny_6(x + 6);
    total += game_064_tiny_7(x + 7);
    total += game_064_large_a(x + 8);
    total += game_064_large_b(x + 9);
    total += game_064_large_a(x + 10);
    total += game_064_large_b(x + 11);
    total += game_064_branch_variable(x & 3, x + 12);
    total += game_064_branch_variable(x & 3, x + 13);
    total += game_064_recursive(2);
    total += game_064_recursive(3);
    return total;
}
