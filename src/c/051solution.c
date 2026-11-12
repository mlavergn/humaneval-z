char *remove_vowels(const char *text) {
    char *result = malloc(strlen(text) + 1);
    if (!result) return NULL;
    size_t len = 0;
    for (const char *p = text; *p; p++) {
        if (!strchr("aeiouAEIOU", *p)) result[len++] = *p;
    }
    result[len] = '\0';
    return result;
}
