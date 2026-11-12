#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = solve("AsDf");
        assert(got && strcmp(got, "aSdF") == 0);
        free(got);
    }
    {
        char *got = solve("1234");
        assert(got && strcmp(got, "4321") == 0);
        free(got);
    }
    {
        char *got = solve("ab");
        assert(got && strcmp(got, "AB") == 0);
        free(got);
    }
    {
        char *got = solve("#a@C");
        assert(got && strcmp(got, "#A@c") == 0);
        free(got);
    }
    {
        char *got = solve("#AsdfW^45");
        assert(got && strcmp(got, "#aSDFw^45") == 0);
        free(got);
    }
    {
        char *got = solve("#6@2");
        assert(got && strcmp(got, "2@6#") == 0);
        free(got);
    }
    {
        char *got = solve("#$a^D");
        assert(got && strcmp(got, "#$A^d") == 0);
        free(got);
    }
    {
        char *got = solve("#ccc");
        assert(got && strcmp(got, "#CCC") == 0);
        free(got);
    }
    return 0;
}
