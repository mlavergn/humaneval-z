#undef NDEBUG
#include <assert.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = rounded_avg(1, 5);
        assert(got && strcmp(got, "0b11") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(7, 13);
        assert(got && strcmp(got, "0b1010") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(964, 977);
        assert(got && strcmp(got, "0b1111001011") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(996, 997);
        assert(got && strcmp(got, "0b1111100101") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(560, 851);
        assert(got && strcmp(got, "0b1011000010") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(185, 546);
        assert(got && strcmp(got, "0b101101110") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(362, 496);
        assert(got && strcmp(got, "0b110101101") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(350, 902);
        assert(got && strcmp(got, "0b1001110010") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(197, 233);
        assert(got && strcmp(got, "0b11010111") == 0);
        free(got);
    }
    assert(rounded_avg(7, 5) == NULL);
    assert(rounded_avg(5, 1) == NULL);
    {
        char *got = rounded_avg(5, 5);
        assert(got && strcmp(got, "0b101") == 0);
        free(got);
    }
    return 0;
}
