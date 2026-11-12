#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(add_elements((const long long[]){1, -2, -3, 41, 57, 76, 87, 88, 99}, 9, 3) == -4);
    assert(add_elements((const long long[]){111, 121, 3, 4000, 5, 6}, 6, 2) == 0);
    assert(add_elements((const long long[]){11, 21, 3, 90, 5, 6, 7, 8, 9}, 9, 4) == 125);
    assert(add_elements((const long long[]){111, 21, 3, 4000, 5, 6, 7, 8, 9}, 9, 4) == 24);
    assert(add_elements((const long long[]){1}, 1, 1) == 1);
    return 0;
}
