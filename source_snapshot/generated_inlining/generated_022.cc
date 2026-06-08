extern "C" int gen_022_small(int x) { return x + 2; }

extern "C" int gen_022_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_022_large(int x) {
    int s = x;
    s = (s * 3) + 22;
    s ^= (s >> 1);
    s = (s * 4) + 23;
    s ^= (s >> 2);
    s = (s * 5) + 24;
    s ^= (s >> 3);
    s = (s * 6) + 25;
    s ^= (s >> 1);
    s = (s * 7) + 26;
    s ^= (s >> 2);
    s = (s * 8) + 27;
    s ^= (s >> 3);
    s = (s * 9) + 28;
    s ^= (s >> 1);
    s = (s * 10) + 29;
    s ^= (s >> 2);
    s = (s * 11) + 30;
    s ^= (s >> 3);
    s = (s * 12) + 31;
    s ^= (s >> 1);
    s = (s * 13) + 32;
    s ^= (s >> 2);
    s = (s * 14) + 33;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_022_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_022_recursive(x - 1);
}

extern "C" int gen_022_mix_0(int x) {
    return gen_022_small(x) + gen_022_branchy(0, x);
}

extern "C" int gen_022_mix_1(int x) {
    return gen_022_small(x) + gen_022_branchy(1, x);
}

extern "C" int gen_022_mix_2(int x) {
    return gen_022_small(x) + gen_022_branchy(2, x);
}

extern "C" int gen_022_mix_3(int x) {
    return gen_022_small(x) + gen_022_branchy(0, x);
}

extern "C" int gen_022_mix_4(int x) {
    return gen_022_small(x) + gen_022_branchy(1, x);
}

extern "C" int gen_022_mix_5(int x) {
    return gen_022_small(x) + gen_022_branchy(2, x);
}

extern "C" int gen_022_driver(int x) {
    int total = 0;
    total += gen_022_small(x + 0);
    total += gen_022_branchy(1, x);
    total += gen_022_large(x + 2);
    total += gen_022_mix_3(x);
    total += gen_022_recursive(0);
    total += gen_022_small(x + 5);
    total += gen_022_branchy(0, x);
    total += gen_022_large(x + 7);
    total += gen_022_mix_2(x);
    total += gen_022_recursive(1);
    total += gen_022_small(x + 10);
    total += gen_022_branchy(2, x);
    return total;
}
