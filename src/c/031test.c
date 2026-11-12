#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!is_prime(6));
    assert(is_prime(101));
    assert(is_prime(11));
    assert(is_prime(13441));
    assert(is_prime(61));
    assert(!is_prime(4));
    assert(!is_prime(1));
    assert(is_prime(5));
    assert(is_prime(11));
    assert(is_prime(17));
    assert(!is_prime(85));
    assert(!is_prime(77));
    assert(!is_prime(255379));
    return 0;
}
