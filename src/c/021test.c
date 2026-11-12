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
        double *got = rescale_to_unit((const double[]){2.0, 49.9}, 2, &n);
        assert(check_doubles(got, n, (const double[]){0.0, 1.0}, 2));
        free(got);
    }
    {
        size_t n;
        double *got = rescale_to_unit((const double[]){100.0, 49.9}, 2, &n);
        assert(check_doubles(got, n, (const double[]){1.0, 0.0}, 2));
        free(got);
    }
    {
        size_t n;
        double *got = rescale_to_unit((const double[]){1.0, 2.0, 3.0, 4.0, 5.0}, 5, &n);
        assert(check_doubles(got, n, (const double[]){0.0, 0.25, 0.5, 0.75, 1.0}, 5));
        free(got);
    }
    {
        size_t n;
        double *got = rescale_to_unit((const double[]){2.0, 1.0, 5.0, 3.0, 4.0}, 5, &n);
        assert(check_doubles(got, n, (const double[]){0.25, 0.0, 1.0, 0.5, 0.75}, 5));
        free(got);
    }
    {
        size_t n;
        double *got = rescale_to_unit((const double[]){12.0, 11.0, 15.0, 13.0, 14.0}, 5, &n);
        assert(check_doubles(got, n, (const double[]){0.25, 0.0, 1.0, 0.5, 0.75}, 5));
        free(got);
    }
    return 0;
}
