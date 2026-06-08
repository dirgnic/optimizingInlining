extern "C" int gen_023_small(int x) { return x + 3; }

extern "C" int gen_023_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_023_large(int x) {
    int s = x;
    s = (s * 3) + 23;
    s ^= (s >> 1);
    s = (s * 4) + 24;
    s ^= (s >> 2);
    s = (s * 5) + 25;
    s ^= (s >> 3);
    s = (s * 6) + 26;
    s ^= (s >> 1);
    s = (s * 7) + 27;
    s ^= (s >> 2);
    s = (s * 8) + 28;
    s ^= (s >> 3);
    s = (s * 9) + 29;
    s ^= (s >> 1);
    s = (s * 10) + 30;
    s ^= (s >> 2);
    s = (s * 11) + 31;
    s ^= (s >> 3);
    s = (s * 12) + 32;
    s ^= (s >> 1);
    s = (s * 13) + 33;
    s ^= (s >> 2);
    s = (s * 14) + 34;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_023_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_023_recursive(x - 1);
}

extern "C" int gen_023_mix_0(int x) {
    return gen_023_small(x) + gen_023_branchy(0, x);
}

extern "C" int gen_023_mix_1(int x) {
    return gen_023_small(x) + gen_023_branchy(1, x);
}

extern "C" int gen_023_mix_2(int x) {
    return gen_023_small(x) + gen_023_branchy(2, x);
}

extern "C" int gen_023_mix_3(int x) {
    return gen_023_small(x) + gen_023_branchy(0, x);
}

extern "C" int gen_023_mix_4(int x) {
    return gen_023_small(x) + gen_023_branchy(1, x);
}

extern "C" int gen_023_mix_5(int x) {
    return gen_023_small(x) + gen_023_branchy(2, x);
}

extern "C" int gen_023_driver(int x) {
    int total = 0;
    total += gen_023_small(x + 0);
    total += gen_023_branchy(1, x);
    total += gen_023_large(x + 2);
    total += gen_023_mix_3(x);
    total += gen_023_recursive(0);
    total += gen_023_small(x + 5);
    total += gen_023_branchy(0, x);
    total += gen_023_large(x + 7);
    total += gen_023_mix_2(x);
    total += gen_023_recursive(1);
    total += gen_023_small(x + 10);
    total += gen_023_branchy(2, x);
    return total;
}
