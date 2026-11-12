long long digits(long long n) {
    long long product = 1, odd_count = 0;
    for (; n > 0; n /= 10) {
        long long d = n % 10;
        if (d % 2 == 1) {
            product *= d;
            odd_count++;
        }
    }
    return odd_count == 0 ? 0 : product;
}
