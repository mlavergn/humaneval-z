long long count_upper(const char *s) {
    long long count = 0;
    size_t len = strlen(s);
    for (size_t i = 0; i < len; i += 2) {
        if (strchr("AEIOU", s[i]) && s[i] != '\0') count++;
    }
    return count;
}
