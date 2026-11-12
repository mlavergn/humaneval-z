#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(iscube(1));
    assert(!iscube(2));
    assert(iscube(-1));
    assert(iscube(64));
    assert(!iscube(180));
    assert(iscube(1000));
    assert(iscube(0));
    assert(!iscube(1729));
    return 0;
}
