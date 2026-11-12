#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = longest(NULL, 0);
        assert(got == NULL);
    }
    {
        char *got = longest((const char *const[]){"x", "y", "z"}, 3);
        assert(got && strcmp(got, "x") == 0);
        free(got);
    }
    {
        char *got = longest((const char *const[]){"x", "yyy", "zzzz", "www", "kkkk", "abc"}, 6);
        assert(got && strcmp(got, "zzzz") == 0);
        free(got);
    }
    return 0;
}
