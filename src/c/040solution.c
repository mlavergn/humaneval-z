bool triples_sum_to_zero(const long long *l, size_t l_len) {
    for (size_t i = 0; i < l_len; i++) {
        for (size_t j = i + 1; j < l_len; j++) {
            for (size_t k = j + 1; k < l_len; k++) {
                if (l[i] + l[j] + l[k] == 0) return true;
            }
        }
    }
    return false;
}
