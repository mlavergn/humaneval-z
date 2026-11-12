bool is_nested(const char *s) {
    size_t len = strlen(s);
    // Pair opening brackets (left to right) with closing ones (right to left).
    size_t cnt = 0, close = len;
    for (size_t i = 0; i < len; i++) {
        if (s[i] != '[') continue;
        while (close > 0 && s[close - 1] == '[') close--;
        if (close > 0 && i < close - 1) {
            cnt++;
            close--;
        }
    }
    return cnt >= 2;
}
