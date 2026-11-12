#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = get_closest_vowel("yogurt");
        assert(got && strcmp(got, "u") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("full");
        assert(got && strcmp(got, "u") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("easy");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("eAsy");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("ali");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("bad");
        assert(got && strcmp(got, "a") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("most");
        assert(got && strcmp(got, "o") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("ab");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("ba");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("quick");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("anime");
        assert(got && strcmp(got, "i") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("Asia");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("Above");
        assert(got && strcmp(got, "o") == 0);
        free(got);
    }
    return 0;
}
