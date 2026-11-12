void sum_product(const long long *numbers, size_t numbers_len, long long out[2]) {
    long long sum_value = 0, prod_value = 1;
    for (size_t i = 0; i < numbers_len; i++) {
        sum_value += numbers[i];
        prod_value *= numbers[i];
    }
    out[0] = sum_value;
    out[1] = prod_value;
}
