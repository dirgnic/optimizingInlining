extern "C" int gen_039_small(int x) { return x + 5; }

extern "C" int gen_039_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_039_large(int x) {
    int s = x;
    s = (s * 3) + 39;
    s ^= (s >> 1);
    s = (s * 4) + 40;
    s ^= (s >> 2);
    s = (s * 5) + 41;
    s ^= (s >> 3);
    s = (s * 6) + 42;
    s ^= (s >> 1);
    s = (s * 7) + 43;
    s ^= (s >> 2);
    s = (s * 8) + 44;
    s ^= (s >> 3);
    s = (s * 9) + 45;
    s ^= (s >> 1);
    s = (s * 10) + 46;
    s ^= (s >> 2);
    s = (s * 11) + 47;
    s ^= (s >> 3);
    s = (s * 12) + 48;
    s ^= (s >> 1);
    s = (s * 13) + 49;
    s ^= (s >> 2);
    s = (s * 14) + 50;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_039_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_039_recursive(x - 1);
}

extern "C" int gen_039_mix_0(int x) {
    return gen_039_small(x) + gen_039_branchy(0, x);
}

extern "C" int gen_039_mix_1(int x) {
    return gen_039_small(x) + gen_039_branchy(1, x);
}

extern "C" int gen_039_mix_2(int x) {
    return gen_039_small(x) + gen_039_branchy(2, x);
}

extern "C" int gen_039_mix_3(int x) {
    return gen_039_small(x) + gen_039_branchy(0, x);
}

extern "C" int gen_039_mix_4(int x) {
    return gen_039_small(x) + gen_039_branchy(1, x);
}

extern "C" int gen_039_mix_5(int x) {
    return gen_039_small(x) + gen_039_branchy(2, x);
}

extern "C" int gen_039_driver(int x) {
    int total = 0;
    total += gen_039_small(x + 0);
    total += gen_039_branchy(1, x);
    total += gen_039_large(x + 2);
    total += gen_039_mix_3(x);
    total += gen_039_recursive(0);
    total += gen_039_small(x + 5);
    total += gen_039_branchy(0, x);
    total += gen_039_large(x + 7);
    total += gen_039_mix_2(x);
    total += gen_039_recursive(1);
    total += gen_039_small(x + 10);
    total += gen_039_branchy(2, x);
    return total;
}
