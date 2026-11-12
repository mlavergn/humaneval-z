#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(specialfilter((const long long[]){5, -2, 1, -5}, 4) == 0);
    assert(specialfilter((const long long[]){15, -73, 14, -15}, 4) == 1);
    assert(specialfilter((const long long[]){33, -2, -3, 45, 21, 109}, 6) == 2);
    assert(specialfilter((const long long[]){43, -12, 93, 125, 121, 109}, 6) == 4);
    assert(specialfilter((const long long[]){71, -2, -33, 75, 21, 19}, 6) == 3);
    assert(specialfilter((const long long[]){1}, 1) == 0);
    assert(specialfilter(NULL, 0) == 0);
    return 0;
}
