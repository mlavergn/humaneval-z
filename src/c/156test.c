#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = int_to_mini_roman(19);
        assert(got && strcmp(got, "xix") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(152);
        assert(got && strcmp(got, "clii") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(251);
        assert(got && strcmp(got, "ccli") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(426);
        assert(got && strcmp(got, "cdxxvi") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(500);
        assert(got && strcmp(got, "d") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(1);
        assert(got && strcmp(got, "i") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(4);
        assert(got && strcmp(got, "iv") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(43);
        assert(got && strcmp(got, "xliii") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(90);
        assert(got && strcmp(got, "xc") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(94);
        assert(got && strcmp(got, "xciv") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(532);
        assert(got && strcmp(got, "dxxxii") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(900);
        assert(got && strcmp(got, "cm") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(994);
        assert(got && strcmp(got, "cmxciv") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(1000);
        assert(got && strcmp(got, "m") == 0);
        free(got);
    }
    return 0;
}
