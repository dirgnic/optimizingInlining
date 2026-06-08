extern "C" int gen_006_small(int x) { return x + 7; }

extern "C" int gen_006_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_006_large(int x) {
    int s = x;
    s = (s * 3) + 6;
    s ^= (s >> 1);
    s = (s * 4) + 7;
    s ^= (s >> 2);
    s = (s * 5) + 8;
    s ^= (s >> 3);
    s = (s * 6) + 9;
    s ^= (s >> 1);
    s = (s * 7) + 10;
    s ^= (s >> 2);
    s = (s * 8) + 11;
    s ^= (s >> 3);
    s = (s * 9) + 12;
    s ^= (s >> 1);
    s = (s * 10) + 13;
    s ^= (s >> 2);
    s = (s * 11) + 14;
    s ^= (s >> 3);
    s = (s * 12) + 15;
    s ^= (s >> 1);
    s = (s * 13) + 16;
    s ^= (s >> 2);
    s = (s * 14) + 17;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_006_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_006_recursive(x - 1);
}

extern "C" int gen_006_mix_0(int x) {
    return gen_006_small(x) + gen_006_branchy(0, x);
}

extern "C" int gen_006_mix_1(int x) {
    return gen_006_small(x) + gen_006_branchy(1, x);
}

extern "C" int gen_006_mix_2(int x) {
    return gen_006_small(x) + gen_006_branchy(2, x);
}

extern "C" int gen_006_mix_3(int x) {
    return gen_006_small(x) + gen_006_branchy(0, x);
}

extern "C" int gen_006_mix_4(int x) {
    return gen_006_small(x) + gen_006_branchy(1, x);
}

extern "C" int gen_006_mix_5(int x) {
    return gen_006_small(x) + gen_006_branchy(2, x);
}

extern "C" int gen_006_driver(int x) {
    int total = 0;
    total += gen_006_small(x + 0);
    total += gen_006_branchy(1, x);
    total += gen_006_large(x + 2);
    total += gen_006_mix_3(x);
    total += gen_006_recursive(0);
    total += gen_006_small(x + 5);
    total += gen_006_branchy(0, x);
    total += gen_006_large(x + 7);
    total += gen_006_mix_2(x);
    total += gen_006_recursive(1);
    total += gen_006_small(x + 10);
    total += gen_006_branchy(2, x);
    return total;
}
