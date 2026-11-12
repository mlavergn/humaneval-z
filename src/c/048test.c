#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(is_palindrome(""));
    assert(is_palindrome("aba"));
    assert(is_palindrome("aaaaa"));
    assert(!is_palindrome("zbcd"));
    assert(is_palindrome("xywyx"));
    assert(!is_palindrome("xywyz"));
    assert(!is_palindrome("xywzx"));
    return 0;
}
