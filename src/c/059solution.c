long long largest_prime_factor(long long n) {
    long long largest = 1;
    for (long long i = 2; i * i <= n;) {
        if (n % i == 0) {
            largest = i;
            n /= i;
        } else {
            i++;
        }
    }
    return n > 1 && n > largest ? n : largest;
}
