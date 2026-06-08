extern "C" int gen_060_small(int x) { return x + 5; }

extern "C" int gen_060_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_060_large(int x) {
    int s = x;
    s = (s * 3) + 60;
    s ^= (s >> 1);
    s = (s * 4) + 61;
    s ^= (s >> 2);
    s = (s * 5) + 62;
    s ^= (s >> 3);
    s = (s * 6) + 63;
    s ^= (s >> 1);
    s = (s * 7) + 64;
    s ^= (s >> 2);
    s = (s * 8) + 65;
    s ^= (s >> 3);
    s = (s * 9) + 66;
    s ^= (s >> 1);
    s = (s * 10) + 67;
    s ^= (s >> 2);
    s = (s * 11) + 68;
    s ^= (s >> 3);
    s = (s * 12) + 69;
    s ^= (s >> 1);
    s = (s * 13) + 70;
    s ^= (s >> 2);
    s = (s * 14) + 71;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_060_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_060_recursive(x - 1);
}

extern "C" int gen_060_mix_0(int x) {
    return gen_060_small(x) + gen_060_branchy(0, x);
}

extern "C" int gen_060_mix_1(int x) {
    return gen_060_small(x) + gen_060_branchy(1, x);
}

extern "C" int gen_060_mix_2(int x) {
    return gen_060_small(x) + gen_060_branchy(2, x);
}

extern "C" int gen_060_mix_3(int x) {
    return gen_060_small(x) + gen_060_branchy(0, x);
}

extern "C" int gen_060_mix_4(int x) {
    return gen_060_small(x) + gen_060_branchy(1, x);
}

extern "C" int gen_060_mix_5(int x) {
    return gen_060_small(x) + gen_060_branchy(2, x);
}

extern "C" int gen_060_driver(int x) {
    int total = 0;
    total += gen_060_small(x + 0);
    total += gen_060_branchy(1, x);
    total += gen_060_large(x + 2);
    total += gen_060_mix_3(x);
    total += gen_060_recursive(0);
    total += gen_060_small(x + 5);
    total += gen_060_branchy(0, x);
    total += gen_060_large(x + 7);
    total += gen_060_mix_2(x);
    total += gen_060_recursive(1);
    total += gen_060_small(x + 10);
    total += gen_060_branchy(2, x);
    return total;
}
