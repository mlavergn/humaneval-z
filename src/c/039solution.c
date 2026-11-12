long long prime_fib(long long n) {
    long long a = 0, b = 1;
    while (true) {
        long long next = a + b;
        a = b;
        b = next;
        bool prime = b >= 2;
        for (long long i = 2; prime && i * i <= b; i++) {
            if (b % i == 0) prime = false;
        }
        if (prime) n--;
        if (n == 0) return b;
    }
}
