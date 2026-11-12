#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(is_simple_power(1, 4));
    assert(is_simple_power(2, 2));
    assert(is_simple_power(8, 2));
    assert(!is_simple_power(3, 2));
    assert(!is_simple_power(3, 1));
    assert(!is_simple_power(5, 3));
    assert(is_simple_power(16, 2));
    assert(!is_simple_power(143214, 16));
    assert(is_simple_power(4, 2));
    assert(is_simple_power(9, 3));
    assert(is_simple_power(16, 4));
    assert(!is_simple_power(24, 2));
    assert(!is_simple_power(128, 4));
    assert(!is_simple_power(12, 6));
    assert(is_simple_power(1, 1));
    assert(is_simple_power(1, 12));
    return 0;
}
