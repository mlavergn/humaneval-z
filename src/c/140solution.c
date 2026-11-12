char *fix_spaces(const char *text) {
    char *result = malloc(strlen(text) + 1);
    if (!result) return NULL;
    size_t len = 0, run = 0;
    for (const char *p = text; *p; p++) {
        if (*p == ' ') {
            run++;
            continue;
        }
        if (run > 2) {
            result[len++] = '-';
        } else {
            while (run-- > 0) result[len++] = '_';
        }
        result[len++] = *p;
        run = 0;
    }
    if (run > 2) {
        result[len++] = '-';
    } else if (run > 0) {
        result[len++] = '_';
    }
    result[len] = '\0';
    return result;
}
