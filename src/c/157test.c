#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(right_angle_triangle(3, 4, 5));
    assert(!right_angle_triangle(1, 2, 3));
    assert(right_angle_triangle(10, 6, 8));
    assert(!right_angle_triangle(2, 2, 2));
    assert(right_angle_triangle(7, 24, 25));
    assert(!right_angle_triangle(10, 5, 7));
    assert(right_angle_triangle(5, 12, 13));
    assert(right_angle_triangle(15, 8, 17));
    assert(right_angle_triangle(48, 55, 73));
    assert(!right_angle_triangle(1, 1, 1));
    assert(!right_angle_triangle(2, 2, 10));
    return 0;
}
