#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(closest_integer("10") == 10);
    assert(closest_integer("14.5") == 15);
    assert(closest_integer("-15.5") == -16);
    assert(closest_integer("15.3") == 15);
    assert(closest_integer("0") == 0);
    return 0;
}
