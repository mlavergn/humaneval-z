char *strongest_extension(const char *class_name, const char *const *extensions, size_t extensions_len) {
    const char *strong = extensions[0];
    long long my_val = 0;
    for (size_t i = 0; i < extensions_len; i++) {
        long long val = 0;
        for (const unsigned char *p = (const unsigned char *)extensions[i]; *p; p++) {
            if (isupper(*p)) val++;
            if (islower(*p)) val--;
        }
        if (i == 0 || val > my_val) {
            strong = extensions[i];
            my_val = val;
        }
    }
    size_t len = strlen(class_name) + 1 + strlen(strong);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    snprintf(result, len + 1, "%s.%s", class_name, strong);
    return result;
}
