#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(triangle_area(3.0, 4.0, 5.0) == 6.0);
    assert(triangle_area(1.0, 2.0, 10.0) == -1.0);
    assert(triangle_area(4.0, 8.0, 5.0) == 8.18);
    assert(triangle_area(2.0, 2.0, 2.0) == 1.73);
    assert(triangle_area(1.0, 2.0, 3.0) == -1.0);
    assert(triangle_area(10.0, 5.0, 7.0) == 16.25);
    assert(triangle_area(2.0, 6.0, 3.0) == -1.0);
    assert(triangle_area(1.0, 1.0, 1.0) == 0.43);
    assert(triangle_area(2.0, 2.0, 10.0) == -1.0);
    return 0;
}
