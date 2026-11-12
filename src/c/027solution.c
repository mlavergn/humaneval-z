char *flip_case(const char *str) {
    size_t len = strlen(str);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i <= len; i++) {
        unsigned char c = (unsigned char)str[i];
        result[i] = (char)(isupper(c) ? tolower(c) : islower(c) ? toupper(c) : c);
    }
    return result;
}
