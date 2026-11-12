long long *remove_duplicates(const long long *numbers, size_t numbers_len, size_t *out_len) {
    long long *result = malloc((numbers_len ? numbers_len : 1) * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t i = 0; i < numbers_len; i++) {
        size_t occurrences = 0;
        for (size_t j = 0; j < numbers_len; j++) {
            if (numbers[j] == numbers[i]) occurrences++;
        }
        if (occurrences == 1) result[count++] = numbers[i];
    }
    *out_len = count;
    return result;
}
