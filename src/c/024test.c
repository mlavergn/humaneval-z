#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(largest_divisor(3) == 1);
    assert(largest_divisor(7) == 1);
    assert(largest_divisor(10) == 5);
    assert(largest_divisor(100) == 50);
    assert(largest_divisor(49) == 7);
    return 0;
}
