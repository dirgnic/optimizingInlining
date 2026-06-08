extern "C" int gen_051_small(int x) { return x + 3; }

extern "C" int gen_051_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_051_large(int x) {
    int s = x;
    s = (s * 3) + 51;
    s ^= (s >> 1);
    s = (s * 4) + 52;
    s ^= (s >> 2);
    s = (s * 5) + 53;
    s ^= (s >> 3);
    s = (s * 6) + 54;
    s ^= (s >> 1);
    s = (s * 7) + 55;
    s ^= (s >> 2);
    s = (s * 8) + 56;
    s ^= (s >> 3);
    s = (s * 9) + 57;
    s ^= (s >> 1);
    s = (s * 10) + 58;
    s ^= (s >> 2);
    s = (s * 11) + 59;
    s ^= (s >> 3);
    s = (s * 12) + 60;
    s ^= (s >> 1);
    s = (s * 13) + 61;
    s ^= (s >> 2);
    s = (s * 14) + 62;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_051_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_051_recursive(x - 1);
}

extern "C" int gen_051_mix_0(int x) {
    return gen_051_small(x) + gen_051_branchy(0, x);
}

extern "C" int gen_051_mix_1(int x) {
    return gen_051_small(x) + gen_051_branchy(1, x);
}

extern "C" int gen_051_mix_2(int x) {
    return gen_051_small(x) + gen_051_branchy(2, x);
}

extern "C" int gen_051_mix_3(int x) {
    return gen_051_small(x) + gen_051_branchy(0, x);
}

extern "C" int gen_051_mix_4(int x) {
    return gen_051_small(x) + gen_051_branchy(1, x);
}

extern "C" int gen_051_mix_5(int x) {
    return gen_051_small(x) + gen_051_branchy(2, x);
}

extern "C" int gen_051_driver(int x) {
    int total = 0;
    total += gen_051_small(x + 0);
    total += gen_051_branchy(1, x);
    total += gen_051_large(x + 2);
    total += gen_051_mix_3(x);
    total += gen_051_recursive(0);
    total += gen_051_small(x + 5);
    total += gen_051_branchy(0, x);
    total += gen_051_large(x + 7);
    total += gen_051_mix_2(x);
    total += gen_051_recursive(1);
    total += gen_051_small(x + 10);
    total += gen_051_branchy(2, x);
    return total;
}
