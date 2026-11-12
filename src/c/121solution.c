long long solution(const long long *lst, size_t lst_len) {
    long long sum = 0;
    for (size_t i = 0; i < lst_len; i += 2) {
        if (lst[i] % 2 != 0) sum += lst[i];
    }
    return sum;
}
