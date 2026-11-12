#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(is_bored("Hello world") == 0);
    assert(is_bored("Is the sky blue?") == 0);
    assert(is_bored("I love It !") == 1);
    assert(is_bored("bIt") == 0);
    assert(is_bored("I feel good today. I will be productive. will kill It") == 2);
    assert(is_bored("You and I are going for a walk") == 0);
    return 0;
}
