#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(vowels_count("abcde") == 2);
    assert(vowels_count("Alone") == 3);
    assert(vowels_count("key") == 2);
    assert(vowels_count("bye") == 1);
    assert(vowels_count("keY") == 2);
    assert(vowels_count("bYe") == 1);
    assert(vowels_count("ACEDY") == 3);
    return 0;
}
