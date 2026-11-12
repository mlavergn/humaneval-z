#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(triangle_area(5.0, 3.0) == 7.5);
    assert(triangle_area(2.0, 2.0) == 2.0);
    assert(triangle_area(10.0, 8.0) == 40.0);
    return 0;
}
