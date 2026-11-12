#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(is_nested("[[]]"));
    assert(!is_nested("[]]]]]]][[[[[]"));
    assert(!is_nested("[][]"));
    assert(!is_nested("'[]'"));
    assert(is_nested("[[[[]]]]"));
    assert(!is_nested("[]]]]]]]]]]"));
    assert(is_nested("[][][[]]"));
    assert(!is_nested("[[]"));
    assert(!is_nested("[]]"));
    assert(is_nested("[[]][["));
    assert(is_nested("[[][]]"));
    assert(!is_nested(""));
    assert(!is_nested("[[[[[[[["));
    assert(!is_nested("]]]]]]]]"));
    return 0;
}
