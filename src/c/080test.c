#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(!is_happy("a"));
    assert(!is_happy("aa"));
    assert(is_happy("abcd"));
    assert(!is_happy("aabb"));
    assert(is_happy("adb"));
    assert(!is_happy("xyy"));
    assert(is_happy("iopaxpoi"));
    assert(!is_happy("iopaxioi"));
    return 0;
}
