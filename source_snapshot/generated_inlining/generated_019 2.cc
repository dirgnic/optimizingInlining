extern "C" int gen_019_small(int x) { return x + 6; }

extern "C" int gen_019_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_019_large(int x) {
    int s = x;
    s = (s * 3) + 19;
    s ^= (s >> 1);
    s = (s * 4) + 20;
    s ^= (s >> 2);
    s = (s * 5) + 21;
    s ^= (s >> 3);
    s = (s * 6) + 22;
    s ^= (s >> 1);
    s = (s * 7) + 23;
    s ^= (s >> 2);
    s = (s * 8) + 24;
    s ^= (s >> 3);
    s = (s * 9) + 25;
    s ^= (s >> 1);
    s = (s * 10) + 26;
    s ^= (s >> 2);
    s = (s * 11) + 27;
    s ^= (s >> 3);
    s = (s * 12) + 28;
    s ^= (s >> 1);
    s = (s * 13) + 29;
    s ^= (s >> 2);
    s = (s * 14) + 30;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_019_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_019_recursive(x - 1);
}

extern "C" int gen_019_mix_0(int x) {
    return gen_019_small(x) + gen_019_branchy(0, x);
}

extern "C" int gen_019_mix_1(int x) {
    return gen_019_small(x) + gen_019_branchy(1, x);
}

extern "C" int gen_019_mix_2(int x) {
    return gen_019_small(x) + gen_019_branchy(2, x);
}

extern "C" int gen_019_mix_3(int x) {
    return gen_019_small(x) + gen_019_branchy(0, x);
}

extern "C" int gen_019_mix_4(int x) {
    return gen_019_small(x) + gen_019_branchy(1, x);
}

extern "C" int gen_019_mix_5(int x) {
    return gen_019_small(x) + gen_019_branchy(2, x);
}

extern "C" int gen_019_driver(int x) {
    int total = 0;
    total += gen_019_small(x + 0);
    total += gen_019_branchy(1, x);
    total += gen_019_large(x + 2);
    total += gen_019_mix_3(x);
    total += gen_019_recursive(0);
    total += gen_019_small(x + 5);
    total += gen_019_branchy(0, x);
    total += gen_019_large(x + 7);
    total += gen_019_mix_2(x);
    total += gen_019_recursive(1);
    total += gen_019_small(x + 10);
    total += gen_019_branchy(2, x);
    return total;
}
