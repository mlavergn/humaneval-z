char *encode(const char *message) {
    size_t len = strlen(message);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) {
        unsigned char c = (unsigned char)message[i];
        char swapped = (char)(islower(c) ? toupper(c) : isupper(c) ? tolower(c) : c);
        if (strchr("aeiouAEIOU", swapped)) swapped = (char)(swapped + 2);
        result[i] = swapped;
    }
    result[len] = '\0';
    return result;
}
