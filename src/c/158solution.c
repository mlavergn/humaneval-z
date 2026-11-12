char *find_max(const char *const *words, size_t words_len) {
    const char *best = words[0];
    size_t best_count = 0;
    for (size_t i = 0; i < words_len; i++) {
        bool seen[256] = {false};
        size_t count = 0;
        for (const unsigned char *p = (const unsigned char *)words[i]; *p; p++) {
            if (!seen[*p]) {
                seen[*p] = true;
                count++;
            }
        }
        if (i == 0 || count > best_count || (count == best_count && strcmp(words[i], best) < 0)) {
            best = words[i];
            best_count = count;
        }
    }
    char *result = malloc(strlen(best) + 1);
    if (!result) return NULL;
    strcpy(result, best);
    return result;
}
