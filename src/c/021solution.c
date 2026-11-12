double *rescale_to_unit(const double *numbers, size_t numbers_len, size_t *out_len) {
    double *result = malloc((numbers_len ? numbers_len : 1) * sizeof *result);
    if (!result) return NULL;
    double smallest = numbers[0], largest = numbers[0];
    for (size_t i = 0; i < numbers_len; i++) {
        if (numbers[i] < smallest) smallest = numbers[i];
        if (numbers[i] > largest) largest = numbers[i];
    }
    for (size_t i = 0; i < numbers_len; i++) {
        result[i] = smallest == largest ? numbers[i] : (numbers[i] - smallest) / (largest - smallest);
    }
    *out_len = numbers_len;
    return result;
}
