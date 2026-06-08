extern "C" int gen_050_small(int x) { return x + 2; }

extern "C" int gen_050_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_050_large(int x) {
    int s = x;
    s = (s * 3) + 50;
    s ^= (s >> 1);
    s = (s * 4) + 51;
    s ^= (s >> 2);
    s = (s * 5) + 52;
    s ^= (s >> 3);
    s = (s * 6) + 53;
    s ^= (s >> 1);
    s = (s * 7) + 54;
    s ^= (s >> 2);
    s = (s * 8) + 55;
    s ^= (s >> 3);
    s = (s * 9) + 56;
    s ^= (s >> 1);
    s = (s * 10) + 57;
    s ^= (s >> 2);
    s = (s * 11) + 58;
    s ^= (s >> 3);
    s = (s * 12) + 59;
    s ^= (s >> 1);
    s = (s * 13) + 60;
    s ^= (s >> 2);
    s = (s * 14) + 61;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_050_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_050_recursive(x - 1);
}

extern "C" int gen_050_mix_0(int x) {
    return gen_050_small(x) + gen_050_branchy(0, x);
}

extern "C" int gen_050_mix_1(int x) {
    return gen_050_small(x) + gen_050_branchy(1, x);
}

extern "C" int gen_050_mix_2(int x) {
    return gen_050_small(x) + gen_050_branchy(2, x);
}

extern "C" int gen_050_mix_3(int x) {
    return gen_050_small(x) + gen_050_branchy(0, x);
}

extern "C" int gen_050_mix_4(int x) {
    return gen_050_small(x) + gen_050_branchy(1, x);
}

extern "C" int gen_050_mix_5(int x) {
    return gen_050_small(x) + gen_050_branchy(2, x);
}

extern "C" int gen_050_driver(int x) {
    int total = 0;
    total += gen_050_small(x + 0);
    total += gen_050_branchy(1, x);
    total += gen_050_large(x + 2);
    total += gen_050_mix_3(x);
    total += gen_050_recursive(0);
    total += gen_050_small(x + 5);
    total += gen_050_branchy(0, x);
    total += gen_050_large(x + 7);
    total += gen_050_mix_2(x);
    total += gen_050_recursive(1);
    total += gen_050_small(x + 10);
    total += gen_050_branchy(2, x);
    return total;
}
