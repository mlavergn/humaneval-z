#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(add((const long long[]){4, 88}, 2) == 88);
    assert(add((const long long[]){4, 5, 6, 7, 2, 122}, 6) == 122);
    assert(add((const long long[]){4, 0, 6, 7}, 4) == 0);
    assert(add((const long long[]){4, 4, 6, 8}, 4) == 12);
    return 0;
}
