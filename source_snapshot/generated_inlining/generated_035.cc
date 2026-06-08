extern "C" int gen_035_small(int x) { return x + 1; }

extern "C" int gen_035_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_035_large(int x) {
    int s = x;
    s = (s * 3) + 35;
    s ^= (s >> 1);
    s = (s * 4) + 36;
    s ^= (s >> 2);
    s = (s * 5) + 37;
    s ^= (s >> 3);
    s = (s * 6) + 38;
    s ^= (s >> 1);
    s = (s * 7) + 39;
    s ^= (s >> 2);
    s = (s * 8) + 40;
    s ^= (s >> 3);
    s = (s * 9) + 41;
    s ^= (s >> 1);
    s = (s * 10) + 42;
    s ^= (s >> 2);
    s = (s * 11) + 43;
    s ^= (s >> 3);
    s = (s * 12) + 44;
    s ^= (s >> 1);
    s = (s * 13) + 45;
    s ^= (s >> 2);
    s = (s * 14) + 46;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_035_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_035_recursive(x - 1);
}

extern "C" int gen_035_mix_0(int x) {
    return gen_035_small(x) + gen_035_branchy(0, x);
}

extern "C" int gen_035_mix_1(int x) {
    return gen_035_small(x) + gen_035_branchy(1, x);
}

extern "C" int gen_035_mix_2(int x) {
    return gen_035_small(x) + gen_035_branchy(2, x);
}

extern "C" int gen_035_mix_3(int x) {
    return gen_035_small(x) + gen_035_branchy(0, x);
}

extern "C" int gen_035_mix_4(int x) {
    return gen_035_small(x) + gen_035_branchy(1, x);
}

extern "C" int gen_035_mix_5(int x) {
    return gen_035_small(x) + gen_035_branchy(2, x);
}

extern "C" int gen_035_driver(int x) {
    int total = 0;
    total += gen_035_small(x + 0);
    total += gen_035_branchy(1, x);
    total += gen_035_large(x + 2);
    total += gen_035_mix_3(x);
    total += gen_035_recursive(0);
    total += gen_035_small(x + 5);
    total += gen_035_branchy(0, x);
    total += gen_035_large(x + 7);
    total += gen_035_mix_2(x);
    total += gen_035_recursive(1);
    total += gen_035_small(x + 10);
    total += gen_035_branchy(2, x);
    return total;
}
