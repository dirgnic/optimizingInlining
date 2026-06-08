extern "C" int gen_001_small(int x) { return x + 2; }

extern "C" int gen_001_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_001_large(int x) {
    int s = x;
    s = (s * 3) + 1;
    s ^= (s >> 1);
    s = (s * 4) + 2;
    s ^= (s >> 2);
    s = (s * 5) + 3;
    s ^= (s >> 3);
    s = (s * 6) + 4;
    s ^= (s >> 1);
    s = (s * 7) + 5;
    s ^= (s >> 2);
    s = (s * 8) + 6;
    s ^= (s >> 3);
    s = (s * 9) + 7;
    s ^= (s >> 1);
    s = (s * 10) + 8;
    s ^= (s >> 2);
    s = (s * 11) + 9;
    s ^= (s >> 3);
    s = (s * 12) + 10;
    s ^= (s >> 1);
    s = (s * 13) + 11;
    s ^= (s >> 2);
    s = (s * 14) + 12;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_001_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_001_recursive(x - 1);
}

extern "C" int gen_001_mix_0(int x) {
    return gen_001_small(x) + gen_001_branchy(0, x);
}

extern "C" int gen_001_mix_1(int x) {
    return gen_001_small(x) + gen_001_branchy(1, x);
}

extern "C" int gen_001_mix_2(int x) {
    return gen_001_small(x) + gen_001_branchy(2, x);
}

extern "C" int gen_001_mix_3(int x) {
    return gen_001_small(x) + gen_001_branchy(0, x);
}

extern "C" int gen_001_mix_4(int x) {
    return gen_001_small(x) + gen_001_branchy(1, x);
}

extern "C" int gen_001_mix_5(int x) {
    return gen_001_small(x) + gen_001_branchy(2, x);
}

extern "C" int gen_001_driver(int x) {
    int total = 0;
    total += gen_001_small(x + 0);
    total += gen_001_branchy(1, x);
    total += gen_001_large(x + 2);
    total += gen_001_mix_3(x);
    total += gen_001_recursive(0);
    total += gen_001_small(x + 5);
    total += gen_001_branchy(0, x);
    total += gen_001_large(x + 7);
    total += gen_001_mix_2(x);
    total += gen_001_recursive(1);
    total += gen_001_small(x + 10);
    total += gen_001_branchy(2, x);
    return total;
}
