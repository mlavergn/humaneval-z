#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(count_distinct_characters("") == 0);
    assert(count_distinct_characters("abcde") == 5);
    assert(count_distinct_characters("abcdecadeCADE") == 5);
    assert(count_distinct_characters("aaaaAAAAaaaa") == 1);
    assert(count_distinct_characters("Jerry jERRY JeRRRY") == 5);
    return 0;
}
