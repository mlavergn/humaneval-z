split_result split_words(const char *txt) {
    split_result result = {false, NULL, 0, 0};
    bool has_space = strchr(txt, ' ') != NULL;
    if (has_space || strchr(txt, ',')) {
        result.is_words = true;
        result.words = malloc((strlen(txt) + 1) * sizeof *result.words);
        if (!result.words) return result;
        const char *p = txt;
        while (true) {
            if (has_space) {
                while (*p && isspace((unsigned char)*p)) p++;
                if (!*p) break;
            }
            const char *start = p;
            while (*p && (has_space ? !isspace((unsigned char)*p) : *p != ',')) p++;
            size_t len = (size_t)(p - start);
            char *word = malloc(len + 1);
            if (!word) {
                for (size_t k = 0; k < result.words_len; k++) free(result.words[k]);
                free(result.words);
                result.words = NULL;
                result.words_len = 0;
                return result;
            }
            memcpy(word, start, len);
            word[len] = '\0';
            result.words[result.words_len++] = word;
            if (!has_space) {
                if (!*p) break;
                p++;
            }
        }
        return result;
    }
    for (const char *p = txt; *p; p++) {
        if (islower((unsigned char)*p) && (*p - 'a') % 2 == 1) result.count++;
    }
    return result;
}
