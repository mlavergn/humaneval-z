void even_odd_count(long long num, long long out[2]) {
    out[0] = out[1] = 0;
    unsigned long long rest = num < 0 ? 0ULL - (unsigned long long)num : (unsigned long long)num;
    do {
        out[rest % 2 == 0 ? 0 : 1]++;
        rest /= 10;
    } while (rest > 0);
}
