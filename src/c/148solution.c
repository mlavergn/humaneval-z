char **bf(const char *planet1, const char *planet2, size_t *out_len) {
    static const char *const planet_names[] = {"Mercury", "Venus", "Earth", "Mars",
                                               "Jupiter", "Saturn", "Uranus", "Neptune"};
    int pos1 = -1, pos2 = -1;
    for (int i = 0; i < 8; i++) {
        if (strcmp(planet1, planet_names[i]) == 0) pos1 = i;
        if (strcmp(planet2, planet_names[i]) == 0) pos2 = i;
    }
    char **result = malloc(8 * sizeof *result);
    if (!result) return NULL;
    size_t count = 0;
    if (pos1 != -1 && pos2 != -1) {
        int lo = pos1 < pos2 ? pos1 : pos2, hi = pos1 < pos2 ? pos2 : pos1;
        for (int i = lo + 1; i < hi; i++) {
            result[count] = malloc(strlen(planet_names[i]) + 1);
            if (!result[count]) {
                for (size_t k = 0; k < count; k++) free(result[k]);
                free(result);
                return NULL;
            }
            strcpy(result[count++], planet_names[i]);
        }
    }
    *out_len = count;
    return result;
}
