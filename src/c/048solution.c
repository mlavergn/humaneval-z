bool is_palindrome(const char *text) {
    size_t len = strlen(text);
    for (size_t i = 0; i < len / 2; i++) {
        if (text[i] != text[len - 1 - i]) return false;
    }
    return true;
}
