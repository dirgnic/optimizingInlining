extern "C" int gen_058_small(int x) { return x + 3; }

extern "C" int gen_058_branchy(int mode, int x) {
    if (mode == 0) return x + 1;
    if (mode == 1) return x * 2;
    if (mode == 2) return x - 3;
    return x + mode;
}

extern "C" int gen_058_large(int x) {
    int s = x;
    s = (s * 3) + 58;
    s ^= (s >> 1);
    s = (s * 4) + 59;
    s ^= (s >> 2);
    s = (s * 5) + 60;
    s ^= (s >> 3);
    s = (s * 6) + 61;
    s ^= (s >> 1);
    s = (s * 7) + 62;
    s ^= (s >> 2);
    s = (s * 8) + 63;
    s ^= (s >> 3);
    s = (s * 9) + 64;
    s ^= (s >> 1);
    s = (s * 10) + 65;
    s ^= (s >> 2);
    s = (s * 11) + 66;
    s ^= (s >> 3);
    s = (s * 12) + 67;
    s ^= (s >> 1);
    s = (s * 13) + 68;
    s ^= (s >> 2);
    s = (s * 14) + 69;
    s ^= (s >> 3);
    return s;
}

extern "C" int gen_058_recursive(int x) {
    if (x <= 0) return 0;
    return x + gen_058_recursive(x - 1);
}

extern "C" int gen_058_mix_0(int x) {
    return gen_058_small(x) + gen_058_branchy(0, x);
}

extern "C" int gen_058_mix_1(int x) {
    return gen_058_small(x) + gen_058_branchy(1, x);
}

extern "C" int gen_058_mix_2(int x) {
    return gen_058_small(x) + gen_058_branchy(2, x);
}

extern "C" int gen_058_mix_3(int x) {
    return gen_058_small(x) + gen_058_branchy(0, x);
}

extern "C" int gen_058_mix_4(int x) {
    return gen_058_small(x) + gen_058_branchy(1, x);
}

extern "C" int gen_058_mix_5(int x) {
    return gen_058_small(x) + gen_058_branchy(2, x);
}

extern "C" int gen_058_driver(int x) {
    int total = 0;
    total += gen_058_small(x + 0);
    total += gen_058_branchy(1, x);
    total += gen_058_large(x + 2);
    total += gen_058_mix_3(x);
    total += gen_058_recursive(0);
    total += gen_058_small(x + 5);
    total += gen_058_branchy(0, x);
    total += gen_058_large(x + 7);
    total += gen_058_mix_2(x);
    total += gen_058_recursive(1);
    total += gen_058_small(x + 10);
    total += gen_058_branchy(2, x);
    return total;
}
