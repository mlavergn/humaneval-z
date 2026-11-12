long long *compare(const long long *game, size_t game_len, const long long *guess, size_t guess_len, size_t *out_len) {
    (void)guess_len;
    long long *result = malloc((game_len ? game_len : 1) * sizeof *result);
    if (!result) return NULL;
    for (size_t i = 0; i < game_len; i++) result[i] = llabs(game[i] - guess[i]);
    *out_len = game_len;
    return result;
}
