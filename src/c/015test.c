#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = string_sequence(0);
        assert(got && strcmp(got, "0") == 0);
        free(got);
    }
    {
        char *got = string_sequence(3);
        assert(got && strcmp(got, "0 1 2 3") == 0);
        free(got);
    }
    {
        char *got = string_sequence(10);
        assert(got && strcmp(got, "0 1 2 3 4 5 6 7 8 9 10") == 0);
        free(got);
    }
    return 0;
}
