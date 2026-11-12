#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(count_upper("aBCdEf") == 1);
    assert(count_upper("abcdefg") == 0);
    assert(count_upper("dBBE") == 0);
    assert(count_upper("B") == 0);
    assert(count_upper("U") == 1);
    assert(count_upper("") == 0);
    assert(count_upper("EEEE") == 2);
    return 0;
}
