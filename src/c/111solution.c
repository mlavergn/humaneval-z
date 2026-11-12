letter_count *histogram(const char *test, size_t *out_len) {
    long long counts[256] = {0};
    bool word_start = true;
    for (const unsigned char *p = (const unsigned char *)test; *p; p++) {
        if (isspace(*p)) {
            word_start = true;
        } else if (word_start) {
            counts[*p]++;
            word_start = false;
        }
    }
    long long max = 0;
    for (size_t c = 0; c < 256; c++) {
        if (counts[c] > max) max = counts[c];
    }
    letter_count *result = malloc(256 * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    for (size_t c = 0; c < 256 && max > 0; c++) {
        if (counts[c] == max) result[count++] = (letter_count){(char)c, max};
    }
    *out_len = count;
    return result;
}
