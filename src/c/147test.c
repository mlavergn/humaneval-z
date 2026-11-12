#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(get_max_triples(5) == 1);
    assert(get_max_triples(6) == 4);
    assert(get_max_triples(10) == 36);
    assert(get_max_triples(100) == 53361);
    return 0;
}
