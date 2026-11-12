#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(largest_prime_factor(15) == 5);
    assert(largest_prime_factor(27) == 3);
    assert(largest_prime_factor(63) == 7);
    assert(largest_prime_factor(330) == 11);
    assert(largest_prime_factor(13195) == 29);
    return 0;
}
