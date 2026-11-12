char *anti_shuffle(const char *s) {
    char *result = malloc(strlen(s) + 1);
    if (!result) return NULL;
    size_t len = 0;
    const char *p = s;
    while (*p) {
        while (*p && isspace((unsigned char)*p)) p++;
        if (!*p) break;
        if (len) result[len++] = ' ';
        size_t start = len;
        while (*p && !isspace((unsigned char)*p)) {
            // Insertion sort the word's characters as they are copied.
            size_t j = len++;
            while (j > start && result[j - 1] > *p) {
                result[j] = result[j - 1];
                j--;
            }
            result[j] = *p++;
        }
    }
    result[len] = '\0';
    return result;
}
