extern "C" int gen_003_small(int x) { return x + 4; }

extern "C" int gen_003_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_003_large(int x) {
    int s = x;
    s = (s * 3) + 3;
    s ^= (s >> 1);
    s = (s * 4) + 4;
    s ^= (s >> 2);
    s = (s * 5) + 5;
    s ^= (s >> 3);
    s = (s * 6) + 6;
    s ^= (s >> 1);
    s = (s * 7) + 7;
    s ^= (s >> 2);
    s = (s * 8) + 8;
    s ^= (s >> 3);
    s = (s * 9) + 9;
    s ^= (s >> 1);
    s = (s * 10) + 10;
    s ^= (s >> 2);
    s = (s * 11) + 11;
    s ^= (s >> 3);
    s = (s * 12) + 12;
    s ^= (s >> 1);
    s = (s * 13) + 13;
    s ^= (s >> 2);
    s = (s * 14) + 14;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_003_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_003_recursive(x - 1);
}

extern "C" int gen_003_mix_0(int x) {
    return gen_003_small(x) + gen_003_branchy(0, x);
}

extern "C" int gen_003_mix_1(int x) {
    return gen_003_small(x) + gen_003_branchy(1, x);
}

extern "C" int gen_003_mix_2(int x) {
    return gen_003_small(x) + gen_003_branchy(2, x);
}

extern "C" int gen_003_mix_3(int x) {
    return gen_003_small(x) + gen_003_branchy(0, x);
}

extern "C" int gen_003_mix_4(int x) {
    return gen_003_small(x) + gen_003_branchy(1, x);
}

extern "C" int gen_003_mix_5(int x) {
    return gen_003_small(x) + gen_003_branchy(2, x);
}

extern "C" int gen_003_driver(int x) {
    int total = 0;
    total += gen_003_small(x + 0);
    total += gen_003_branchy(1, x);
    total += gen_003_large(x + 2);
    total += gen_003_mix_3(x);
    total += gen_003_recursive(0);
    total += gen_003_small(x + 5);
    total += gen_003_branchy(0, x);
    total += gen_003_large(x + 7);
    total += gen_003_mix_2(x);
    total += gen_003_recursive(1);
    total += gen_003_small(x + 10);
    total += gen_003_branchy(2, x);
    return total;
}
