#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = string_xor("111000", "101010");
        assert(got && strcmp(got, "010010") == 0);
        free(got);
    }
    {
        char *got = string_xor("1", "1");
        assert(got && strcmp(got, "0") == 0);
        free(got);
    }
    {
        char *got = string_xor("0101", "0000");
        assert(got && strcmp(got, "0101") == 0);
        free(got);
    }
    return 0;
}
