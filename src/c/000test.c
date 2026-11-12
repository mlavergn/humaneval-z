#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(has_close_elements((const double[]){11.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 6, 0.3));
    assert(!has_close_elements((const double[]){1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 6, 0.05));
    assert(has_close_elements((const double[]){1.0, 2.0, 5.9, 4.0, 5.0}, 5, 0.95));
    assert(!has_close_elements((const double[]){1.0, 2.0, 5.9, 4.0, 5.0}, 5, 0.8));
    assert(has_close_elements((const double[]){1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 6, 0.1));
    assert(has_close_elements((const double[]){1.1, 2.2, 3.1, 4.1, 5.1}, 5, 1.0));
    assert(!has_close_elements((const double[]){1.1, 2.2, 3.1, 4.1, 5.1}, 5, 0.5));
    return 0;
}
