#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(simplify("1/5", "5/1"));
    assert(!simplify("1/6", "2/1"));
    assert(simplify("5/1", "3/1"));
    assert(!simplify("7/10", "10/2"));
    assert(simplify("2/10", "50/10"));
    assert(simplify("7/2", "4/2"));
    assert(simplify("11/6", "6/1"));
    assert(!simplify("2/3", "5/2"));
    assert(!simplify("5/2", "3/5"));
    assert(simplify("2/4", "8/4"));
    assert(simplify("2/4", "4/2"));
    assert(simplify("1/5", "5/1"));
    assert(!simplify("1/5", "1/5"));
    return 0;
}
