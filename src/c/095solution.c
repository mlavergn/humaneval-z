bool check_dict_case(const char *const (*dict)[2], size_t dict_len) {
    if (dict_len == 0) return false;
    bool is_lower = false, is_upper = false;
    for (size_t i = 0; i < dict_len; i++) {
        for (const unsigned char *p = (const unsigned char *)dict[i][0]; *p; p++) {
            if (!isalpha(*p)) return false;
            if (isupper(*p)) is_upper = true;
            if (islower(*p)) is_lower = true;
            if (is_upper && is_lower) return false;
        }
    }
    return true;
}
