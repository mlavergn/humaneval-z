void find_closest_elements(const double *numbers, size_t numbers_len, double out[2]) {
    double distance = INFINITY;
    out[0] = out[1] = 0;
    for (size_t i = 0; i < numbers_len; i++) {
        for (size_t j = 0; j < numbers_len; j++) {
            if (i == j) continue;
            double new_distance = fabs(numbers[i] - numbers[j]);
            if (new_distance < distance) {
                distance = new_distance;
                out[0] = fmin(numbers[i], numbers[j]);
                out[1] = fmax(numbers[i], numbers[j]);
            }
        }
    }
}
