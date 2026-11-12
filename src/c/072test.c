#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(will_it_fly((const long long[]){3, 2, 3}, 3, 9));
    assert(!will_it_fly((const long long[]){1, 2}, 2, 5));
    assert(will_it_fly((const long long[]){3}, 1, 5));
    assert(!will_it_fly((const long long[]){3, 2, 3}, 3, 1));
    assert(!will_it_fly((const long long[]){1, 2, 3}, 3, 6));
    assert(will_it_fly((const long long[]){5}, 1, 5));
    return 0;
}
