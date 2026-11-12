#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = concatenate(NULL, 0);
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = concatenate((const char *const[]){"x", "y", "z"}, 3);
        assert(got && strcmp(got, "xyz") == 0);
        free(got);
    }
    {
        char *got = concatenate((const char *const[]){"x", "y", "z", "w", "k"}, 5);
        assert(got && strcmp(got, "xyzwk") == 0);
        free(got);
    }
    return 0;
}
