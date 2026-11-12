#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc"));
    assert(same_chars("abcd", "dddddddabc"));
    assert(same_chars("dddddddabc", "abcd"));
    assert(!same_chars("eabcd", "dddddddabc"));
    assert(!same_chars("abcd", "dddddddabcf"));
    assert(!same_chars("eabcdzzzz", "dddzzzzzzzddddabc"));
    assert(!same_chars("aabb", "aaccc"));
    return 0;
}
