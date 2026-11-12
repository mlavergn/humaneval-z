void eat(long long number, long long need, long long remaining, long long out[2]) {
    if (need <= remaining) {
        out[0] = number + need;
        out[1] = remaining - need;
    } else {
        out[0] = number + remaining;
        out[1] = 0;
    }
}
