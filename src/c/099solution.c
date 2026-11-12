long long closest_integer(const char *value) {
    char *end;
    double num = strtod(value, &end);
    if (end == value) return 0;
    // round() rounds halfway cases away from zero.
    return llround(num);
}
