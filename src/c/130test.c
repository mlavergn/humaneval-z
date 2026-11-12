#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_doubles(const double *got, size_t n, const double *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        double *got = tri(3, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0}, 4));
        free(got);
    }
    {
        size_t n;
        double *got = tri(4, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0}, 5));
        free(got);
    }
    {
        size_t n;
        double *got = tri(5, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0}, 6));
        free(got);
    }
    {
        size_t n;
        double *got = tri(6, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0, 4.0}, 7));
        free(got);
    }
    {
        size_t n;
        double *got = tri(7, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0}, 8));
        free(got);
    }
    {
        size_t n;
        double *got = tri(8, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0}, 9));
        free(got);
    }
    {
        size_t n;
        double *got = tri(9, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0}, 10));
        free(got);
    }
    {
        size_t n;
        double *got = tri(20, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0, 2.0, 8.0, 3.0, 15.0, 4.0, 24.0, 5.0, 35.0, 6.0, 48.0, 7.0, 63.0, 8.0, 80.0, 9.0, 99.0, 10.0, 120.0, 11.0}, 21));
        free(got);
    }
    {
        size_t n;
        double *got = tri(0, &n);
        assert(check_doubles(got, n, (const double[]){1.0}, 1));
        free(got);
    }
    {
        size_t n;
        double *got = tri(1, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 3.0}, 2));
        free(got);
    }
    return 0;
}
