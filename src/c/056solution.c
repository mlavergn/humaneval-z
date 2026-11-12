bool correct_bracketing(const char *brackets) {
    long long count = 0;
    for (const char *p = brackets; *p; p++) {
        if (*p == '<') {
            count++;
        } else if (*p == '>') {
            count--;
        }
        if (count < 0) return false;
    }
    return count == 0;
}
