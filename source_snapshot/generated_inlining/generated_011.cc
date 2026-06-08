extern "C" int gen_011_small(int x) { return x + 5; }

extern "C" int gen_011_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_011_large(int x) {
    int s = x;
    s = (s * 3) + 11;
    s ^= (s >> 1);
    s = (s * 4) + 12;
    s ^= (s >> 2);
    s = (s * 5) + 13;
    s ^= (s >> 3);
    s = (s * 6) + 14;
    s ^= (s >> 1);
    s = (s * 7) + 15;
    s ^= (s >> 2);
    s = (s * 8) + 16;
    s ^= (s >> 3);
    s = (s * 9) + 17;
    s ^= (s >> 1);
    s = (s * 10) + 18;
    s ^= (s >> 2);
    s = (s * 11) + 19;
    s ^= (s >> 3);
    s = (s * 12) + 20;
    s ^= (s >> 1);
    s = (s * 13) + 21;
    s ^= (s >> 2);
    s = (s * 14) + 22;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_011_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_011_recursive(x - 1);
}

extern "C" int gen_011_mix_0(int x) {
    return gen_011_small(x) + gen_011_branchy(0, x);
}

extern "C" int gen_011_mix_1(int x) {
    return gen_011_small(x) + gen_011_branchy(1, x);
}

extern "C" int gen_011_mix_2(int x) {
    return gen_011_small(x) + gen_011_branchy(2, x);
}

extern "C" int gen_011_mix_3(int x) {
    return gen_011_small(x) + gen_011_branchy(0, x);
}

extern "C" int gen_011_mix_4(int x) {
    return gen_011_small(x) + gen_011_branchy(1, x);
}

extern "C" int gen_011_mix_5(int x) {
    return gen_011_small(x) + gen_011_branchy(2, x);
}

extern "C" int gen_011_driver(int x) {
    int total = 0;
    total += gen_011_small(x + 0);
    total += gen_011_branchy(1, x);
    total += gen_011_large(x + 2);
    total += gen_011_mix_3(x);
    total += gen_011_recursive(0);
    total += gen_011_small(x + 5);
    total += gen_011_branchy(0, x);
    total += gen_011_large(x + 7);
    total += gen_011_mix_2(x);
    total += gen_011_recursive(1);
    total += gen_011_small(x + 10);
    total += gen_011_branchy(2, x);
    return total;
}
