char *words_in_sentence(const char *sentence) {
    char *result = malloc(strlen(sentence) + 1);
    if (!result) return NULL;
    size_t len = 0;
    const char *p = sentence;
    while (true) {
        while (*p && isspace((unsigned char)*p)) p++;
        if (!*p) break;
        const char *start = p;
        while (*p && !isspace((unsigned char)*p)) p++;
        size_t n = (size_t)(p - start);
        bool prime = n >= 2;
        for (size_t i = 2; prime && i * i <= n; i++) {
            if (n % i == 0) prime = false;
        }
        if (!prime) continue;
        if (len) result[len++] = ' ';
        memcpy(result + len, start, n);
        len += n;
    }
    result[len] = '\0';
    return result;
}
