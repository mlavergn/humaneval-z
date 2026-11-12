long long specialfilter(const long long *nums, size_t nums_len) {
    long long count = 0;
    for (size_t i = 0; i < nums_len; i++) {
        long long num = nums[i];
        if (num <= 10) continue;
        long long first = num;
        while (first >= 10) first /= 10;
        if (first % 2 == 1 && (num % 10) % 2 == 1) count++;
    }
    return count;
}
