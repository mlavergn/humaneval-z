#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(digits(5) == 5);
    assert(digits(54) == 5);
    assert(digits(120) == 1);
    assert(digits(5014) == 5);
    assert(digits(98765) == 315);
    assert(digits(5576543) == 2625);
    assert(digits(2468) == 0);
    return 0;
}
