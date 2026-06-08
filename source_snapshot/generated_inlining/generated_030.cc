extern "C" int gen_030_small(int x) { return x + 3; }

extern "C" int gen_030_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_030_large(int x) {
    int s = x;
    s = (s * 3) + 30;
    s ^= (s >> 1);
    s = (s * 4) + 31;
    s ^= (s >> 2);
    s = (s * 5) + 32;
    s ^= (s >> 3);
    s = (s * 6) + 33;
    s ^= (s >> 1);
    s = (s * 7) + 34;
    s ^= (s >> 2);
    s = (s * 8) + 35;
    s ^= (s >> 3);
    s = (s * 9) + 36;
    s ^= (s >> 1);
    s = (s * 10) + 37;
    s ^= (s >> 2);
    s = (s * 11) + 38;
    s ^= (s >> 3);
    s = (s * 12) + 39;
    s ^= (s >> 1);
    s = (s * 13) + 40;
    s ^= (s >> 2);
    s = (s * 14) + 41;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_030_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_030_recursive(x - 1);
}

extern "C" int gen_030_mix_0(int x) {
    return gen_030_small(x) + gen_030_branchy(0, x);
}

extern "C" int gen_030_mix_1(int x) {
    return gen_030_small(x) + gen_030_branchy(1, x);
}

extern "C" int gen_030_mix_2(int x) {
    return gen_030_small(x) + gen_030_branchy(2, x);
}

extern "C" int gen_030_mix_3(int x) {
    return gen_030_small(x) + gen_030_branchy(0, x);
}

extern "C" int gen_030_mix_4(int x) {
    return gen_030_small(x) + gen_030_branchy(1, x);
}

extern "C" int gen_030_mix_5(int x) {
    return gen_030_small(x) + gen_030_branchy(2, x);
}

extern "C" int gen_030_driver(int x) {
    int total = 0;
    total += gen_030_small(x + 0);
    total += gen_030_branchy(1, x);
    total += gen_030_large(x + 2);
    total += gen_030_mix_3(x);
    total += gen_030_recursive(0);
    total += gen_030_small(x + 5);
    total += gen_030_branchy(0, x);
    total += gen_030_large(x + 7);
    total += gen_030_mix_2(x);
    total += gen_030_recursive(1);
    total += gen_030_small(x + 10);
    total += gen_030_branchy(2, x);
    return total;
}
