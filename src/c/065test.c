#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = circular_shift(100, 2);
        assert(got && strcmp(got, "001") == 0);
        free(got);
    }
    {
        char *got = circular_shift(12, 2);
        assert(got && strcmp(got, "12") == 0);
        free(got);
    }
    {
        char *got = circular_shift(97, 8);
        assert(got && strcmp(got, "79") == 0);
        free(got);
    }
    {
        char *got = circular_shift(12, 1);
        assert(got && strcmp(got, "21") == 0);
        free(got);
    }
    {
        char *got = circular_shift(11, 101);
        assert(got && strcmp(got, "11") == 0);
        free(got);
    }
    return 0;
}
