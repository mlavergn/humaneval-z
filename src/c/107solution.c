void even_odd_palindrome(long long n, long long out[2]) {
    out[0] = out[1] = 0;
    for (long long i = 1; i <= n; i++) {
        long long reversed = 0;
        for (long long rest = i; rest > 0; rest /= 10) reversed = reversed * 10 + rest % 10;
        if (reversed != i) continue;
        out[i % 2 == 0 ? 0 : 1]++;
    }
}
