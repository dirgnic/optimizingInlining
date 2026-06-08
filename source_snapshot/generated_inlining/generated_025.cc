extern "C" int gen_025_small(int x) { return x + 5; }

extern "C" int gen_025_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_025_large(int x) {
    int s = x;
    s = (s * 3) + 25;
    s ^= (s >> 1);
    s = (s * 4) + 26;
    s ^= (s >> 2);
    s = (s * 5) + 27;
    s ^= (s >> 3);
    s = (s * 6) + 28;
    s ^= (s >> 1);
    s = (s * 7) + 29;
    s ^= (s >> 2);
    s = (s * 8) + 30;
    s ^= (s >> 3);
    s = (s * 9) + 31;
    s ^= (s >> 1);
    s = (s * 10) + 32;
    s ^= (s >> 2);
    s = (s * 11) + 33;
    s ^= (s >> 3);
    s = (s * 12) + 34;
    s ^= (s >> 1);
    s = (s * 13) + 35;
    s ^= (s >> 2);
    s = (s * 14) + 36;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_025_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_025_recursive(x - 1);
}

extern "C" int gen_025_mix_0(int x) {
    return gen_025_small(x) + gen_025_branchy(0, x);
}

extern "C" int gen_025_mix_1(int x) {
    return gen_025_small(x) + gen_025_branchy(1, x);
}

extern "C" int gen_025_mix_2(int x) {
    return gen_025_small(x) + gen_025_branchy(2, x);
}

extern "C" int gen_025_mix_3(int x) {
    return gen_025_small(x) + gen_025_branchy(0, x);
}

extern "C" int gen_025_mix_4(int x) {
    return gen_025_small(x) + gen_025_branchy(1, x);
}

extern "C" int gen_025_mix_5(int x) {
    return gen_025_small(x) + gen_025_branchy(2, x);
}

extern "C" int gen_025_driver(int x) {
    int total = 0;
    total += gen_025_small(x + 0);
    total += gen_025_branchy(1, x);
    total += gen_025_large(x + 2);
    total += gen_025_mix_3(x);
    total += gen_025_recursive(0);
    total += gen_025_small(x + 5);
    total += gen_025_branchy(0, x);
    total += gen_025_large(x + 7);
    total += gen_025_mix_2(x);
    total += gen_025_recursive(1);
    total += gen_025_small(x + 10);
    total += gen_025_branchy(2, x);
    return total;
}
