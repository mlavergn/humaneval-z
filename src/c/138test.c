#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!is_equal_to_sum_even(4));
    assert(!is_equal_to_sum_even(6));
    assert(is_equal_to_sum_even(8));
    assert(is_equal_to_sum_even(10));
    assert(!is_equal_to_sum_even(11));
    assert(is_equal_to_sum_even(12));
    assert(!is_equal_to_sum_even(13));
    assert(is_equal_to_sum_even(16));
    return 0;
}
