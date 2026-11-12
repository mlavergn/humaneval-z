bool has_close_elements(const double *numbers, size_t numbers_len, double threshold) {
    for (size_t i = 0; i < numbers_len; i++) {
        for (size_t j = i + 1; j < numbers_len; j++) {
            if (fabs(numbers[i] - numbers[j]) < threshold) return true;
        }
    }
    return false;
}
