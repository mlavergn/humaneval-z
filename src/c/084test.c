#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = solve(1000);
        assert(got && strcmp(got, "1") == 0);
        free(got);
    }
    {
        char *got = solve(150);
        assert(got && strcmp(got, "110") == 0);
        free(got);
    }
    {
        char *got = solve(147);
        assert(got && strcmp(got, "1100") == 0);
        free(got);
    }
    {
        char *got = solve(333);
        assert(got && strcmp(got, "1001") == 0);
        free(got);
    }
    {
        char *got = solve(963);
        assert(got && strcmp(got, "10010") == 0);
        free(got);
    }
    return 0;
}
