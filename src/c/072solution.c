bool will_it_fly(const long long *q, size_t q_len, long long w) {
    long long sum = 0;
    for (size_t i = 0; i < q_len; i++) {
        sum += q[i];
        if (q[i] != q[q_len - 1 - i]) return false;
    }
    return sum <= w;
}
