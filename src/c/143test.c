#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = words_in_sentence("This is a test");
        assert(got && strcmp(got, "is") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("lets go for swimming");
        assert(got && strcmp(got, "go for") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("there is no place available here");
        assert(got && strcmp(got, "there is no place") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("Hi I am Hussein");
        assert(got && strcmp(got, "Hi am Hussein") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("go for it");
        assert(got && strcmp(got, "go for it") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("here");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("here is");
        assert(got && strcmp(got, "is") == 0);
        free(got);
    }
    return 0;
}
