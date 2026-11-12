bool correct_bracketing(const char *brackets) {
    long long open = 0;
    for (const char *p = brackets; *p; p++) {
        if (*p == '(') {
            open++;
        } else if (*p == ')') {
            open--;
        }
        if (open < 0) return false;
    }
    return open == 0;
}
