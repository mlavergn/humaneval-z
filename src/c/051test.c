#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = remove_vowels("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("abcdef\nghijklm");
        assert(got && strcmp(got, "bcdf\nghjklm") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("fedcba");
        assert(got && strcmp(got, "fdcb") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("eeeee");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("acBAA");
        assert(got && strcmp(got, "cB") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("EcBOO");
        assert(got && strcmp(got, "cB") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("ybcd");
        assert(got && strcmp(got, "ybcd") == 0);
        free(got);
    }
    return 0;
}
