#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(greatest_common_divisor(3, 7) == 1);
    assert(greatest_common_divisor(10, 15) == 5);
    assert(greatest_common_divisor(49, 14) == 7);
    assert(greatest_common_divisor(144, 60) == 12);
    return 0;
}
