char *intersection(const long long interval1[2], const long long interval2[2]) {
    long long l = interval1[0] > interval2[0] ? interval1[0] : interval2[0];
    long long r = interval1[1] < interval2[1] ? interval1[1] : interval2[1];
    long long length = r - l;
    bool prime = length >= 2;
    for (long long i = 2; prime && i * i <= length; i++) {
        if (length % i == 0) prime = false;
    }
    char *result = malloc(4);
    if (!result) return NULL;
    strcpy(result, prime ? "YES" : "NO");
    return result;
}
