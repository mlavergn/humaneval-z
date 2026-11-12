long long vowels_count(const char *s) {
    long long count = 0;
    size_t len = strlen(s);
    for (size_t i = 0; i < len; i++) {
        if (strchr("aeiou", tolower((unsigned char)s[i]))) count++;
    }
    if (len > 0 && tolower((unsigned char)s[len - 1]) == 'y') count++;
    return count;
}
