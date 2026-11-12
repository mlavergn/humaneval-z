reverse_delete_result reverse_delete(const char *s, const char *c) {
    reverse_delete_result result = {malloc(strlen(s) + 1), true};
    if (!result.string) return result;
    size_t len = 0;
    for (const char *p = s; *p; p++) {
        if (!strchr(c, *p)) result.string[len++] = *p;
    }
    result.string[len] = '\0';
    for (size_t i = 0; i < len / 2; i++) {
        if (result.string[i] != result.string[len - 1 - i]) {
            result.is_palindrome = false;
            break;
        }
    }
    return result;
}
