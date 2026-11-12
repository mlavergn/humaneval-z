#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(fib4(5) == 4);
    assert(fib4(8) == 28);
    assert(fib4(10) == 104);
    assert(fib4(12) == 386);
    return 0;
}
