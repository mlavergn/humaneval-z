long long minsubarraysum(const long long *nums, size_t nums_len) {
    long long max_sum = 0, s = 0;
    for (size_t i = 0; i < nums_len; i++) {
        s = s - nums[i] > 0 ? s - nums[i] : 0;
        if (s > max_sum) max_sum = s;
    }
    if (max_sum == 0) {
        max_sum = -nums[0];
        for (size_t i = 1; i < nums_len; i++) {
            if (-nums[i] > max_sum) max_sum = -nums[i];
        }
    }
    return -max_sum;
}
