char **numerical_letter_grade(const double *grades, size_t grades_len, size_t *out_len) {
    char **result = malloc((grades_len ? grades_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < grades_len; i++) {
        double g = grades[i];
        const char *letter = g == 4.0 ? "A+"
                           : g > 3.7  ? "A"
                           : g > 3.3  ? "A-"
                           : g > 3.0  ? "B+"
                           : g > 2.7  ? "B"
                           : g > 2.3  ? "B-"
                           : g > 2.0  ? "C+"
                           : g > 1.7  ? "C"
                           : g > 1.3  ? "C-"
                           : g > 1.0  ? "D+"
                           : g > 0.7  ? "D"
                           : g > 0.0  ? "D-"
                                      : "E";
        result[i] = malloc(strlen(letter) + 1);
        if (!result[i]) {
            for (size_t k = 0; k < i; k++) free(result[k]);
            free(result);
            return NULL;
        }
        strcpy(result[i], letter);
    }
    *out_len = grades_len;
    return result;
}
