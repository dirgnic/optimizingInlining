extern "C" int gen_061_small(int x) { return x + 6; }

extern "C" int gen_061_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_061_large(int x) {
    int s = x;
    s = (s * 3) + 61;
    s ^= (s >> 1);
    s = (s * 4) + 62;
    s ^= (s >> 2);
    s = (s * 5) + 63;
    s ^= (s >> 3);
    s = (s * 6) + 64;
    s ^= (s >> 1);
    s = (s * 7) + 65;
    s ^= (s >> 2);
    s = (s * 8) + 66;
    s ^= (s >> 3);
    s = (s * 9) + 67;
    s ^= (s >> 1);
    s = (s * 10) + 68;
    s ^= (s >> 2);
    s = (s * 11) + 69;
    s ^= (s >> 3);
    s = (s * 12) + 70;
    s ^= (s >> 1);
    s = (s * 13) + 71;
    s ^= (s >> 2);
    s = (s * 14) + 72;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_061_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_061_recursive(x - 1);
}

extern "C" int gen_061_mix_0(int x) {
    return gen_061_small(x) + gen_061_branchy(0, x);
}

extern "C" int gen_061_mix_1(int x) {
    return gen_061_small(x) + gen_061_branchy(1, x);
}

extern "C" int gen_061_mix_2(int x) {
    return gen_061_small(x) + gen_061_branchy(2, x);
}

extern "C" int gen_061_mix_3(int x) {
    return gen_061_small(x) + gen_061_branchy(0, x);
}

extern "C" int gen_061_mix_4(int x) {
    return gen_061_small(x) + gen_061_branchy(1, x);
}

extern "C" int gen_061_mix_5(int x) {
    return gen_061_small(x) + gen_061_branchy(2, x);
}

extern "C" int gen_061_driver(int x) {
    int total = 0;
    total += gen_061_small(x + 0);
    total += gen_061_branchy(1, x);
    total += gen_061_large(x + 2);
    total += gen_061_mix_3(x);
    total += gen_061_recursive(0);
    total += gen_061_small(x + 5);
    total += gen_061_branchy(0, x);
    total += gen_061_large(x + 7);
    total += gen_061_mix_2(x);
    total += gen_061_recursive(1);
    total += gen_061_small(x + 10);
    total += gen_061_branchy(2, x);
    return total;
}
