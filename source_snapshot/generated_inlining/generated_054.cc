extern "C" int gen_054_small(int x) { return x + 6; }

extern "C" int gen_054_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_054_large(int x) {
    int s = x;
    s = (s * 3) + 54;
    s ^= (s >> 1);
    s = (s * 4) + 55;
    s ^= (s >> 2);
    s = (s * 5) + 56;
    s ^= (s >> 3);
    s = (s * 6) + 57;
    s ^= (s >> 1);
    s = (s * 7) + 58;
    s ^= (s >> 2);
    s = (s * 8) + 59;
    s ^= (s >> 3);
    s = (s * 9) + 60;
    s ^= (s >> 1);
    s = (s * 10) + 61;
    s ^= (s >> 2);
    s = (s * 11) + 62;
    s ^= (s >> 3);
    s = (s * 12) + 63;
    s ^= (s >> 1);
    s = (s * 13) + 64;
    s ^= (s >> 2);
    s = (s * 14) + 65;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_054_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_054_recursive(x - 1);
}

extern "C" int gen_054_mix_0(int x) {
    return gen_054_small(x) + gen_054_branchy(0, x);
}

extern "C" int gen_054_mix_1(int x) {
    return gen_054_small(x) + gen_054_branchy(1, x);
}

extern "C" int gen_054_mix_2(int x) {
    return gen_054_small(x) + gen_054_branchy(2, x);
}

extern "C" int gen_054_mix_3(int x) {
    return gen_054_small(x) + gen_054_branchy(0, x);
}

extern "C" int gen_054_mix_4(int x) {
    return gen_054_small(x) + gen_054_branchy(1, x);
}

extern "C" int gen_054_mix_5(int x) {
    return gen_054_small(x) + gen_054_branchy(2, x);
}

extern "C" int gen_054_driver(int x) {
    int total = 0;
    total += gen_054_small(x + 0);
    total += gen_054_branchy(1, x);
    total += gen_054_large(x + 2);
    total += gen_054_mix_3(x);
    total += gen_054_recursive(0);
    total += gen_054_small(x + 5);
    total += gen_054_branchy(0, x);
    total += gen_054_large(x + 7);
    total += gen_054_mix_2(x);
    total += gen_054_recursive(1);
    total += gen_054_small(x + 10);
    total += gen_054_branchy(2, x);
    return total;
}
