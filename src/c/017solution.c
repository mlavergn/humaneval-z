long long *parse_music(const char *music_string, size_t *out_len) {
    size_t cap = 1;
    for (const char *p = music_string; *p; p++) {
        if (*p == ' ') cap++;
    }
    long long *result = malloc(cap * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    const char *start = music_string;
    for (const char *p = music_string;; p++) {
        if (*p != ' ' && *p != '\0') continue;
        size_t len = (size_t)(p - start);
        if (len == 1 && start[0] == 'o') {
            result[count++] = 4;
        } else if (len == 2 && strncmp(start, "o|", 2) == 0) {
            result[count++] = 2;
        } else if (len == 2 && strncmp(start, ".|", 2) == 0) {
            result[count++] = 1;
        }
        if (*p == '\0') break;
        start = p + 1;
    }
    *out_len = count;
    return result;
}
