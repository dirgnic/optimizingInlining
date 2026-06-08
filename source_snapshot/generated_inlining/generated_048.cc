extern "C" int gen_048_small(int x) { return x + 7; }

extern "C" int gen_048_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_048_large(int x) {
    int s = x;
    s = (s * 3) + 48;
    s ^= (s >> 1);
    s = (s * 4) + 49;
    s ^= (s >> 2);
    s = (s * 5) + 50;
    s ^= (s >> 3);
    s = (s * 6) + 51;
    s ^= (s >> 1);
    s = (s * 7) + 52;
    s ^= (s >> 2);
    s = (s * 8) + 53;
    s ^= (s >> 3);
    s = (s * 9) + 54;
    s ^= (s >> 1);
    s = (s * 10) + 55;
    s ^= (s >> 2);
    s = (s * 11) + 56;
    s ^= (s >> 3);
    s = (s * 12) + 57;
    s ^= (s >> 1);
    s = (s * 13) + 58;
    s ^= (s >> 2);
    s = (s * 14) + 59;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_048_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_048_recursive(x - 1);
}

extern "C" int gen_048_mix_0(int x) {
    return gen_048_small(x) + gen_048_branchy(0, x);
}

extern "C" int gen_048_mix_1(int x) {
    return gen_048_small(x) + gen_048_branchy(1, x);
}

extern "C" int gen_048_mix_2(int x) {
    return gen_048_small(x) + gen_048_branchy(2, x);
}

extern "C" int gen_048_mix_3(int x) {
    return gen_048_small(x) + gen_048_branchy(0, x);
}

extern "C" int gen_048_mix_4(int x) {
    return gen_048_small(x) + gen_048_branchy(1, x);
}

extern "C" int gen_048_mix_5(int x) {
    return gen_048_small(x) + gen_048_branchy(2, x);
}

extern "C" int gen_048_driver(int x) {
    int total = 0;
    total += gen_048_small(x + 0);
    total += gen_048_branchy(1, x);
    total += gen_048_large(x + 2);
    total += gen_048_mix_3(x);
    total += gen_048_recursive(0);
    total += gen_048_small(x + 5);
    total += gen_048_branchy(0, x);
    total += gen_048_large(x + 7);
    total += gen_048_mix_2(x);
    total += gen_048_recursive(1);
    total += gen_048_small(x + 10);
    total += gen_048_branchy(2, x);
    return total;
}
