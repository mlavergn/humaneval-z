#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(special_factorial(4) == 288);
    assert(special_factorial(5) == 34560);
    assert(special_factorial(7) == 125411328000);
    assert(special_factorial(1) == 1);
    return 0;
}
