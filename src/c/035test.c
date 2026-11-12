#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(max_element((const long long[]){1, 2, 3}, 3) == 3);
    assert(max_element((const long long[]){5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10}, 11) == 124);
    return 0;
}
