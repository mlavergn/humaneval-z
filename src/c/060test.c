#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(sum_to_n(1) == 1);
    assert(sum_to_n(6) == 21);
    assert(sum_to_n(11) == 66);
    assert(sum_to_n(30) == 465);
    assert(sum_to_n(100) == 5050);
    return 0;
}
