char *exchange(const long long *lst1, size_t lst1_len, const long long *lst2, size_t lst2_len) {
    size_t odd = 0, even = 0;
    for (size_t i = 0; i < lst1_len; i++) {
        if (lst1[i] % 2 != 0) odd++;
    }
    for (size_t i = 0; i < lst2_len; i++) {
        if (lst2[i] % 2 == 0) even++;
    }
    const char *answer = even >= odd ? "YES" : "NO";
    char *result = malloc(strlen(answer) + 1);
    if (!result) return NULL;
    strcpy(result, answer);
    return result;
}
