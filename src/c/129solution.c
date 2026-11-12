long long *minpath(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long k, size_t *out_len) {
    size_t n = grid_len;
    long long val = (long long)(n * n + 1);
    for (size_t i = 0; i < n; i++) {
        for (size_t j = 0; j < grid_lens[i]; j++) {
            if (grid[i][j] != 1) continue;
            if (i != 0 && grid[i - 1][j] < val) val = grid[i - 1][j];
            if (j != 0 && grid[i][j - 1] < val) val = grid[i][j - 1];
            if (i != n - 1 && grid[i + 1][j] < val) val = grid[i + 1][j];
            if (j != n - 1 && grid[i][j + 1] < val) val = grid[i][j + 1];
        }
    }
    size_t count = k > 0 ? (size_t)k : 0;
    long long *ans = malloc((count ? count : 1) * sizeof *ans);
    if (!ans) return NULL;
    for (size_t i = 0; i < count; i++) ans[i] = i % 2 == 0 ? 1 : val;
    *out_len = count;
    return ans;
}
