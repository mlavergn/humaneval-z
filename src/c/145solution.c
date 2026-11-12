long long *order_by_points(const long long *nums, size_t nums_len, size_t *out_len) {
    long long *result = malloc((nums_len ? nums_len : 1) * sizeof *result);
    long long *keys = malloc((nums_len ? nums_len : 1) * sizeof *keys);
    if (!result || !keys) {
        free(result);
        free(keys);
        return NULL;
    }
    for (size_t i = 0; i < nums_len; i++) {
        // Sum of digits, where the first digit of a negative number is negative.
        long long sum = 0, first = 0;
        for (long long rest = llabs(nums[i]); rest > 0; rest /= 10) {
            first = rest % 10;
            sum += first;
        }
        long long key = nums[i] < 0 ? sum - 2 * first : sum;
        // Stable insertion sort by key, so ties keep their original order.
        size_t j = i;
        while (j > 0 && keys[j - 1] > key) {
            keys[j] = keys[j - 1];
            result[j] = result[j - 1];
            j--;
        }
        keys[j] = key;
        result[j] = nums[i];
    }
    free(keys);
    *out_len = nums_len;
    return result;
}
