extern "C" int gen_041_small(int x) { return x + 7; }

extern "C" int gen_041_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_041_large(int x) {
    int s = x;
    s = (s * 3) + 41;
    s ^= (s >> 1);
    s = (s * 4) + 42;
    s ^= (s >> 2);
    s = (s * 5) + 43;
    s ^= (s >> 3);
    s = (s * 6) + 44;
    s ^= (s >> 1);
    s = (s * 7) + 45;
    s ^= (s >> 2);
    s = (s * 8) + 46;
    s ^= (s >> 3);
    s = (s * 9) + 47;
    s ^= (s >> 1);
    s = (s * 10) + 48;
    s ^= (s >> 2);
    s = (s * 11) + 49;
    s ^= (s >> 3);
    s = (s * 12) + 50;
    s ^= (s >> 1);
    s = (s * 13) + 51;
    s ^= (s >> 2);
    s = (s * 14) + 52;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_041_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_041_recursive(x - 1);
}

extern "C" int gen_041_mix_0(int x) {
    return gen_041_small(x) + gen_041_branchy(0, x);
}

extern "C" int gen_041_mix_1(int x) {
    return gen_041_small(x) + gen_041_branchy(1, x);
}

extern "C" int gen_041_mix_2(int x) {
    return gen_041_small(x) + gen_041_branchy(2, x);
}

extern "C" int gen_041_mix_3(int x) {
    return gen_041_small(x) + gen_041_branchy(0, x);
}

extern "C" int gen_041_mix_4(int x) {
    return gen_041_small(x) + gen_041_branchy(1, x);
}

extern "C" int gen_041_mix_5(int x) {
    return gen_041_small(x) + gen_041_branchy(2, x);
}

extern "C" int gen_041_driver(int x) {
    int total = 0;
    total += gen_041_small(x + 0);
    total += gen_041_branchy(1, x);
    total += gen_041_large(x + 2);
    total += gen_041_mix_3(x);
    total += gen_041_recursive(0);
    total += gen_041_small(x + 5);
    total += gen_041_branchy(0, x);
    total += gen_041_large(x + 7);
    total += gen_041_mix_2(x);
    total += gen_041_recursive(1);
    total += gen_041_small(x + 10);
    total += gen_041_branchy(2, x);
    return total;
}
