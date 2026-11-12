#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = find_max((const char *const[]){"name", "of", "string"}, 3);
        assert(got && strcmp(got, "string") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"name", "enam", "game"}, 3);
        assert(got && strcmp(got, "enam") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"aaaaaaa", "bb", "cc"}, 3);
        assert(got && strcmp(got, "aaaaaaa") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"abc", "cba"}, 2);
        assert(got && strcmp(got, "abc") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"play", "this", "game", "of", "footbott"}, 5);
        assert(got && strcmp(got, "footbott") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"we", "are", "gonna", "rock"}, 4);
        assert(got && strcmp(got, "gonna") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"we", "are", "a", "mad", "nation"}, 5);
        assert(got && strcmp(got, "nation") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"this", "is", "a", "prrk"}, 4);
        assert(got && strcmp(got, "this") == 0);
        free(got);
    }
    return 0;
}
