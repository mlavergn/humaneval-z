bool below_zero(const long long *operations, size_t operations_len) {
    long long balance = 0;
    for (size_t i = 0; i < operations_len; i++) {
        balance += operations[i];
        if (balance < 0) return true;
    }
    return false;
}
