#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = make_palindrome("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("x");
        assert(got && strcmp(got, "x") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("xyz");
        assert(got && strcmp(got, "xyzyx") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("xyx");
        assert(got && strcmp(got, "xyx") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("jerry");
        assert(got && strcmp(got, "jerryrrej") == 0);
        free(got);
    }
    return 0;
}
