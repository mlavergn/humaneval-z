char *sort_numbers(const char *numbers) {
    static const char *const names[] = {"zero", "one", "two", "three", "four",
                                        "five", "six", "seven", "eight", "nine"};
    size_t counts[10] = {0};
    const char *start = numbers;
    for (const char *p = numbers;; p++) {
        if (*p != ' ' && *p != '\0') continue;
        size_t len = (size_t)(p - start);
        for (size_t i = 0; i < 10; i++) {
            if (strlen(names[i]) == len && strncmp(start, names[i], len) == 0) counts[i]++;
        }
        if (*p == '\0') break;
        start = p + 1;
    }
    char *result = malloc(strlen(numbers) + 1);
    if (!result) return NULL;
    size_t len = 0;
    for (size_t i = 0; i < 10; i++) {
        for (size_t k = 0; k < counts[i]; k++) {
            if (len) result[len++] = ' ';
            memcpy(result + len, names[i], strlen(names[i]));
            len += strlen(names[i]);
        }
    }
    result[len] = '\0';
    return result;
}
