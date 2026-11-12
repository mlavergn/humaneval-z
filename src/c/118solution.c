char *get_closest_vowel(const char *word) {
    char *result = calloc(2, 1);
    if (!result) return NULL;
    size_t len = strlen(word);
    if (len < 3) return result;
    const char *vowels = "aeiouAEIOU";
    for (size_t i = len - 2; i > 0; i--) {
        if (strchr(vowels, word[i]) && !strchr(vowels, word[i + 1]) && !strchr(vowels, word[i - 1])) {
            result[0] = word[i];
            break;
        }
    }
    return result;
}
