double mean_absolute_deviation(const double *numbers, size_t numbers_len) {
    double sum = 0;
    for (size_t i = 0; i < numbers_len; i++) sum += numbers[i];
    double mean = sum / numbers_len;
    double deviation = 0;
    for (size_t i = 0; i < numbers_len; i++) deviation += fabs(numbers[i] - mean);
    return deviation / numbers_len;
}
