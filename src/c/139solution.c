long long special_factorial(long long n) {
    long long fact_i = 1, special_fact = 1;
    for (long long i = 1; i <= n; i++) {
        fact_i *= i;
        special_fact *= fact_i;
    }
    return special_fact;
}
