char *string_sequence(long long n) {
    size_t cap = 1;
    for (long long i = 0; i <= n; i++) cap += (size_t)snprintf(NULL, 0, "%lld ", i);
    char *seq = malloc(cap);
    if (!seq) return NULL;
    size_t len = 0;
    seq[0] = '\0';
    for (long long i = 0; i <= n; i++) {
        len += (size_t)snprintf(seq + len, cap - len, i == 0 ? "%lld" : " %lld", i);
    }
    return seq;
}
