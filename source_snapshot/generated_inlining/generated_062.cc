extern "C" int gen_062_small(int x) { return x + 7; }

extern "C" int gen_062_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_062_large(int x) {
    int s = x;
    s = (s * 3) + 62;
    s ^= (s >> 1);
    s = (s * 4) + 63;
    s ^= (s >> 2);
    s = (s * 5) + 64;
    s ^= (s >> 3);
    s = (s * 6) + 65;
    s ^= (s >> 1);
    s = (s * 7) + 66;
    s ^= (s >> 2);
    s = (s * 8) + 67;
    s ^= (s >> 3);
    s = (s * 9) + 68;
    s ^= (s >> 1);
    s = (s * 10) + 69;
    s ^= (s >> 2);
    s = (s * 11) + 70;
    s ^= (s >> 3);
    s = (s * 12) + 71;
    s ^= (s >> 1);
    s = (s * 13) + 72;
    s ^= (s >> 2);
    s = (s * 14) + 73;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_062_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_062_recursive(x - 1);
}

extern "C" int gen_062_mix_0(int x) {
    return gen_062_small(x) + gen_062_branchy(0, x);
}

extern "C" int gen_062_mix_1(int x) {
    return gen_062_small(x) + gen_062_branchy(1, x);
}

extern "C" int gen_062_mix_2(int x) {
    return gen_062_small(x) + gen_062_branchy(2, x);
}

extern "C" int gen_062_mix_3(int x) {
    return gen_062_small(x) + gen_062_branchy(0, x);
}

extern "C" int gen_062_mix_4(int x) {
    return gen_062_small(x) + gen_062_branchy(1, x);
}

extern "C" int gen_062_mix_5(int x) {
    return gen_062_small(x) + gen_062_branchy(2, x);
}

extern "C" int gen_062_driver(int x) {
    int total = 0;
    total += gen_062_small(x + 0);
    total += gen_062_branchy(1, x);
    total += gen_062_large(x + 2);
    total += gen_062_mix_3(x);
    total += gen_062_recursive(0);
    total += gen_062_small(x + 5);
    total += gen_062_branchy(0, x);
    total += gen_062_large(x + 7);
    total += gen_062_mix_2(x);
    total += gen_062_recursive(1);
    total += gen_062_small(x + 10);
    total += gen_062_branchy(2, x);
    return total;
}
