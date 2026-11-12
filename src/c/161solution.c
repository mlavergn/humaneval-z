char *solve(const char *s) {
    size_t len = strlen(s);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    bool has_letter = false;
    for (size_t i = 0; i <= len; i++) {
        unsigned char c = (unsigned char)s[i];
        if (islower(c)) {
            result[i] = (char)toupper(c);
            has_letter = true;
        } else if (isupper(c)) {
            result[i] = (char)tolower(c);
            has_letter = true;
        } else {
            result[i] = (char)c;
        }
    }
    if (!has_letter) {
        for (size_t i = 0; i < len / 2; i++) {
            char t = result[i];
            result[i] = result[len - 1 - i];
            result[len - 1 - i] = t;
        }
    }
    return result;
}
