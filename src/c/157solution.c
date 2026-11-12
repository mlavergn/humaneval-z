bool right_angle_triangle(long long a, long long b, long long c) {
    return a * a == b * b + c * c || b * b == a * a + c * c || c * c == a * a + b * b;
}
