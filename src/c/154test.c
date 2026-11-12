#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!cycpattern_check("xyzw", "xyw"));
    assert(cycpattern_check("yello", "ell"));
    assert(!cycpattern_check("whattup", "ptut"));
    assert(cycpattern_check("efef", "fee"));
    assert(!cycpattern_check("abab", "aabb"));
    assert(cycpattern_check("winemtt", "tinem"));
    return 0;
}
