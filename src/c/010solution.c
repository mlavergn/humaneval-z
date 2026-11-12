char *make_palindrome(const char *str) {
    size_t len = strlen(str);
    size_t begin = 0;
    while (str[begin] && isspace((unsigned char)str[begin])) begin++;
    if (begin == len) return calloc(1, 1);
    size_t beginning_of_suffix = 0;
    while (!is_palindrome(str + beginning_of_suffix)) beginning_of_suffix++;
    char *result = malloc(len + beginning_of_suffix + 1);
    if (!result) return NULL;
    memcpy(result, str, len);
    for (size_t k = 0; k < beginning_of_suffix; k++) {
        result[len + k] = str[beginning_of_suffix - 1 - k];
    }
    result[len + beginning_of_suffix] = '\0';
    return result;
}
