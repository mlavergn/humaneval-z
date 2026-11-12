#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(how_many_times("", "x") == 0);
    assert(how_many_times("xyxyxyx", "x") == 4);
    assert(how_many_times("cacacacac", "cac") == 4);
    assert(how_many_times("john doe", "john") == 1);
    return 0;
}
