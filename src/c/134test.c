#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!check_if_last_char_is_a_letter("apple"));
    assert(check_if_last_char_is_a_letter("apple pi e"));
    assert(!check_if_last_char_is_a_letter("eeeee"));
    assert(check_if_last_char_is_a_letter("A"));
    assert(!check_if_last_char_is_a_letter("Pumpkin pie "));
    assert(!check_if_last_char_is_a_letter("Pumpkin pie 1"));
    assert(!check_if_last_char_is_a_letter(""));
    assert(!check_if_last_char_is_a_letter("eeeee e "));
    assert(!check_if_last_char_is_a_letter("apple pie"));
    assert(!check_if_last_char_is_a_letter("apple pi e "));
    return 0;
}
