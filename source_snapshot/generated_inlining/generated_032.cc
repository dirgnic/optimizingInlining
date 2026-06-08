extern "C" int gen_032_small(int x) { return x + 5; }

extern "C" int gen_032_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_032_large(int x) {
    int s = x;
    s = (s * 3) + 32;
    s ^= (s >> 1);
    s = (s * 4) + 33;
    s ^= (s >> 2);
    s = (s * 5) + 34;
    s ^= (s >> 3);
    s = (s * 6) + 35;
    s ^= (s >> 1);
    s = (s * 7) + 36;
    s ^= (s >> 2);
    s = (s * 8) + 37;
    s ^= (s >> 3);
    s = (s * 9) + 38;
    s ^= (s >> 1);
    s = (s * 10) + 39;
    s ^= (s >> 2);
    s = (s * 11) + 40;
    s ^= (s >> 3);
    s = (s * 12) + 41;
    s ^= (s >> 1);
    s = (s * 13) + 42;
    s ^= (s >> 2);
    s = (s * 14) + 43;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_032_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_032_recursive(x - 1);
}

extern "C" int gen_032_mix_0(int x) {
    return gen_032_small(x) + gen_032_branchy(0, x);
}

extern "C" int gen_032_mix_1(int x) {
    return gen_032_small(x) + gen_032_branchy(1, x);
}

extern "C" int gen_032_mix_2(int x) {
    return gen_032_small(x) + gen_032_branchy(2, x);
}

extern "C" int gen_032_mix_3(int x) {
    return gen_032_small(x) + gen_032_branchy(0, x);
}

extern "C" int gen_032_mix_4(int x) {
    return gen_032_small(x) + gen_032_branchy(1, x);
}

extern "C" int gen_032_mix_5(int x) {
    return gen_032_small(x) + gen_032_branchy(2, x);
}

extern "C" int gen_032_driver(int x) {
    int total = 0;
    total += gen_032_small(x + 0);
    total += gen_032_branchy(1, x);
    total += gen_032_large(x + 2);
    total += gen_032_mix_3(x);
    total += gen_032_recursive(0);
    total += gen_032_small(x + 5);
    total += gen_032_branchy(0, x);
    total += gen_032_large(x + 7);
    total += gen_032_mix_2(x);
    total += gen_032_recursive(1);
    total += gen_032_small(x + 10);
    total += gen_032_branchy(2, x);
    return total;
}
