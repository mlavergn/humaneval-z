bool is_multiply_prime(long long a) {
    bool prime[101];
    for (long long n = 0; n < 101; n++) {
        prime[n] = n >= 2;
        for (long long i = 2; prime[n] && i * i <= n; i++) {
            if (n % i == 0) prime[n] = false;
        }
    }
    for (long long i = 2; i < 101; i++) {
        if (!prime[i]) continue;
        for (long long j = 2; j < 101; j++) {
            if (!prime[j]) continue;
            for (long long k = 2; k < 101; k++) {
                if (prime[k] && i * j * k == a) return true;
            }
        }
    }
    return false;
}
