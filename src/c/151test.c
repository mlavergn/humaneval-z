#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    assert(double_the_difference(NULL, 0) == 0);
    assert(double_the_difference((const double[]){5, 4}, 2) == 25);
    assert(double_the_difference((const double[]){0.1, 0.2, 0.3}, 3) == 0);
    assert(double_the_difference((const double[]){-10, -20, -30}, 3) == 0);
    assert(double_the_difference((const double[]){-1, -2, 8}, 3) == 0);
    assert(double_the_difference((const double[]){0.2, 3, 5}, 3) == 34);
    // The odd numbers from -99 to 99.
    double lst[100];
    long long odd_sum = 0;
    for (int k = 0; k < 100; k++) {
        long long i = -99 + 2 * k;
        lst[k] = (double)i;
        if (i > 0) odd_sum += i * i;
    }
    assert(double_the_difference(lst, 100) == odd_sum);
    return 0;
}
