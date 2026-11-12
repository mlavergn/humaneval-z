#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(starts_one_ends(1) == 1);
    assert(starts_one_ends(2) == 18);
    assert(starts_one_ends(3) == 180);
    assert(starts_one_ends(4) == 1800);
    assert(starts_one_ends(5) == 18000);
    return 0;
}
