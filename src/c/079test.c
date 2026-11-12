#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = decimal_to_binary(0);
        assert(got && strcmp(got, "db0db") == 0);
        free(got);
    }
    {
        char *got = decimal_to_binary(32);
        assert(got && strcmp(got, "db100000db") == 0);
        free(got);
    }
    {
        char *got = decimal_to_binary(103);
        assert(got && strcmp(got, "db1100111db") == 0);
        free(got);
    }
    {
        char *got = decimal_to_binary(15);
        assert(got && strcmp(got, "db1111db") == 0);
        free(got);
    }
    return 0;
}
