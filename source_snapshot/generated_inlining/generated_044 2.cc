extern "C" int gen_044_small(int x) { return x + 3; }

extern "C" int gen_044_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_044_large(int x) {
    int s = x;
    s = (s * 3) + 44;
    s ^= (s >> 1);
    s = (s * 4) + 45;
    s ^= (s >> 2);
    s = (s * 5) + 46;
    s ^= (s >> 3);
    s = (s * 6) + 47;
    s ^= (s >> 1);
    s = (s * 7) + 48;
    s ^= (s >> 2);
    s = (s * 8) + 49;
    s ^= (s >> 3);
    s = (s * 9) + 50;
    s ^= (s >> 1);
    s = (s * 10) + 51;
    s ^= (s >> 2);
    s = (s * 11) + 52;
    s ^= (s >> 3);
    s = (s * 12) + 53;
    s ^= (s >> 1);
    s = (s * 13) + 54;
    s ^= (s >> 2);
    s = (s * 14) + 55;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_044_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_044_recursive(x - 1);
}

extern "C" int gen_044_mix_0(int x) {
    return gen_044_small(x) + gen_044_branchy(0, x);
}

extern "C" int gen_044_mix_1(int x) {
    return gen_044_small(x) + gen_044_branchy(1, x);
}

extern "C" int gen_044_mix_2(int x) {
    return gen_044_small(x) + gen_044_branchy(2, x);
}

extern "C" int gen_044_mix_3(int x) {
    return gen_044_small(x) + gen_044_branchy(0, x);
}

extern "C" int gen_044_mix_4(int x) {
    return gen_044_small(x) + gen_044_branchy(1, x);
}

extern "C" int gen_044_mix_5(int x) {
    return gen_044_small(x) + gen_044_branchy(2, x);
}

extern "C" int gen_044_driver(int x) {
    int total = 0;
    total += gen_044_small(x + 0);
    total += gen_044_branchy(1, x);
    total += gen_044_large(x + 2);
    total += gen_044_mix_3(x);
    total += gen_044_recursive(0);
    total += gen_044_small(x + 5);
    total += gen_044_branchy(0, x);
    total += gen_044_large(x + 7);
    total += gen_044_mix_2(x);
    total += gen_044_recursive(1);
    total += gen_044_small(x + 10);
    total += gen_044_branchy(2, x);
    return total;
}
