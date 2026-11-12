#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(modp(3, 5) == 3);
    assert(modp(1101, 101) == 2);
    assert(modp(0, 101) == 1);
    assert(modp(3, 11) == 8);
    assert(modp(100, 101) == 1);
    assert(modp(30, 5) == 4);
    assert(modp(31, 5) == 3);
    return 0;
}
