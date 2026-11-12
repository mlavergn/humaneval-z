long long max_fill(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long capacity) {
    long long result = 0;
    for (size_t i = 0; i < grid_len; i++) {
        long long sum = 0;
        for (size_t j = 0; j < grid_lens[i]; j++) sum += grid[i][j];
        result += (sum + capacity - 1) / capacity;
    }
    return result;
}
