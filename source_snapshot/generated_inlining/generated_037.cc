extern "C" int gen_037_small(int x) { return x + 3; }

extern "C" int gen_037_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_037_large(int x) {
    int s = x;
    s = (s * 3) + 37;
    s ^= (s >> 1);
    s = (s * 4) + 38;
    s ^= (s >> 2);
    s = (s * 5) + 39;
    s ^= (s >> 3);
    s = (s * 6) + 40;
    s ^= (s >> 1);
    s = (s * 7) + 41;
    s ^= (s >> 2);
    s = (s * 8) + 42;
    s ^= (s >> 3);
    s = (s * 9) + 43;
    s ^= (s >> 1);
    s = (s * 10) + 44;
    s ^= (s >> 2);
    s = (s * 11) + 45;
    s ^= (s >> 3);
    s = (s * 12) + 46;
    s ^= (s >> 1);
    s = (s * 13) + 47;
    s ^= (s >> 2);
    s = (s * 14) + 48;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_037_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_037_recursive(x - 1);
}

extern "C" int gen_037_mix_0(int x) {
    return gen_037_small(x) + gen_037_branchy(0, x);
}

extern "C" int gen_037_mix_1(int x) {
    return gen_037_small(x) + gen_037_branchy(1, x);
}

extern "C" int gen_037_mix_2(int x) {
    return gen_037_small(x) + gen_037_branchy(2, x);
}

extern "C" int gen_037_mix_3(int x) {
    return gen_037_small(x) + gen_037_branchy(0, x);
}

extern "C" int gen_037_mix_4(int x) {
    return gen_037_small(x) + gen_037_branchy(1, x);
}

extern "C" int gen_037_mix_5(int x) {
    return gen_037_small(x) + gen_037_branchy(2, x);
}

extern "C" int gen_037_driver(int x) {
    int total = 0;
    total += gen_037_small(x + 0);
    total += gen_037_branchy(1, x);
    total += gen_037_large(x + 2);
    total += gen_037_mix_3(x);
    total += gen_037_recursive(0);
    total += gen_037_small(x + 5);
    total += gen_037_branchy(0, x);
    total += gen_037_large(x + 7);
    total += gen_037_mix_2(x);
    total += gen_037_recursive(1);
    total += gen_037_small(x + 10);
    total += gen_037_branchy(2, x);
    return total;
}
