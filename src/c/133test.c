#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(sum_squares((const double[]){1.0, 2.0, 3.0}, 3) == 14);
    assert(sum_squares((const double[]){1.0, 2.0, 3.0}, 3) == 14);
    assert(sum_squares((const double[]){1.0, 3.0, 5.0, 7.0}, 4) == 84);
    assert(sum_squares((const double[]){1.4, 4.2, 0.0}, 3) == 29);
    assert(sum_squares((const double[]){-2.4, 1.0, 1.0}, 3) == 6);
    assert(sum_squares((const double[]){100.0, 1.0, 15.0, 2.0}, 4) == 10230);
    assert(sum_squares((const double[]){10000.0, 10000.0}, 2) == 200000000);
    assert(sum_squares((const double[]){-1.4, 4.6, 6.3}, 3) == 75);
    assert(sum_squares((const double[]){-1.4, 17.9, 18.9, 19.9}, 4) == 1086);
    assert(sum_squares((const double[]){0.0}, 1) == 0);
    assert(sum_squares((const double[]){-1.0}, 1) == 1);
    assert(sum_squares((const double[]){-1.0, 1.0, 0.0}, 3) == 2);
    return 0;
}
