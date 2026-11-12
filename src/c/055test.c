#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(fib(10) == 55);
    assert(fib(1) == 1);
    assert(fib(8) == 21);
    assert(fib(11) == 89);
    assert(fib(12) == 144);
    return 0;
}
