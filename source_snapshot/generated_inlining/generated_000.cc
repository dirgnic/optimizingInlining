extern "C" int gen_000_small(int x) { return x + 1; }

extern "C" int gen_000_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_000_large(int x) {
    int s = x;
    s = (s * 3) + 0;
    s ^= (s >> 1);
    s = (s * 4) + 1;
    s ^= (s >> 2);
    s = (s * 5) + 2;
    s ^= (s >> 3);
    s = (s * 6) + 3;
    s ^= (s >> 1);
    s = (s * 7) + 4;
    s ^= (s >> 2);
    s = (s * 8) + 5;
    s ^= (s >> 3);
    s = (s * 9) + 6;
    s ^= (s >> 1);
    s = (s * 10) + 7;
    s ^= (s >> 2);
    s = (s * 11) + 8;
    s ^= (s >> 3);
    s = (s * 12) + 9;
    s ^= (s >> 1);
    s = (s * 13) + 10;
    s ^= (s >> 2);
    s = (s * 14) + 11;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_000_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_000_recursive(x - 1);
}

extern "C" int gen_000_mix_0(int x) {
    return gen_000_small(x) + gen_000_branchy(0, x);
}

extern "C" int gen_000_mix_1(int x) {
    return gen_000_small(x) + gen_000_branchy(1, x);
}

extern "C" int gen_000_mix_2(int x) {
    return gen_000_small(x) + gen_000_branchy(2, x);
}

extern "C" int gen_000_mix_3(int x) {
    return gen_000_small(x) + gen_000_branchy(0, x);
}

extern "C" int gen_000_mix_4(int x) {
    return gen_000_small(x) + gen_000_branchy(1, x);
}

extern "C" int gen_000_mix_5(int x) {
    return gen_000_small(x) + gen_000_branchy(2, x);
}

extern "C" int gen_000_driver(int x) {
    int total = 0;
    total += gen_000_small(x + 0);
    total += gen_000_branchy(1, x);
    total += gen_000_large(x + 2);
    total += gen_000_mix_3(x);
    total += gen_000_recursive(0);
    total += gen_000_small(x + 5);
    total += gen_000_branchy(0, x);
    total += gen_000_large(x + 7);
    total += gen_000_mix_2(x);
    total += gen_000_recursive(1);
    total += gen_000_small(x + 10);
    total += gen_000_branchy(2, x);
    return total;
}
