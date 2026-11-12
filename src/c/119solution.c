char *match_parens(const char *const *lst, size_t lst_len) {
    bool ok = false;
    for (size_t order = 0; order < 2 && lst_len == 2 && !ok; order++) {
        const char *parts[2] = {lst[order], lst[1 - order]};
        long long val = 0;
        bool good = true;
        for (size_t k = 0; k < 2 && good; k++) {
            for (const char *p = parts[k]; *p; p++) {
                val += *p == '(' ? 1 : -1;
                if (val < 0) {
                    good = false;
                    break;
                }
            }
        }
        ok = good && val == 0;
    }
    char *result = malloc(4);
    if (!result) return NULL;
    strcpy(result, ok ? "Yes" : "No");
    return result;
}
