#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(smallest_change((const long long[]){1, 2, 3, 5, 4, 7, 9, 6}, 8) == 4);
    assert(smallest_change((const long long[]){1, 2, 3, 4, 3, 2, 2}, 7) == 1);
    assert(smallest_change((const long long[]){1, 4, 2}, 3) == 1);
    assert(smallest_change((const long long[]){1, 4, 4, 2}, 4) == 1);
    assert(smallest_change((const long long[]){1, 2, 3, 2, 1}, 5) == 0);
    assert(smallest_change((const long long[]){3, 1, 1, 3}, 4) == 0);
    assert(smallest_change((const long long[]){1}, 1) == 0);
    assert(smallest_change((const long long[]){0, 1}, 2) == 1);
    return 0;
}
