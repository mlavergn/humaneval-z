#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out;
        assert(prod_signs((const long long[]){1, 2, 2, -4}, 4, &out) && out == -9);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){0, 1}, 2, &out) && out == 0);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){1, 1, 1, 2, 3, -1, 1}, 7, &out) && out == -10);
    }
    {
        long long out;
        assert(!prod_signs(NULL, 0, &out));
    }
    {
        long long out;
        assert(prod_signs((const long long[]){2, 4, 1, 2, -1, -1, 9}, 7, &out) && out == 20);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){-1, 1, -1, 1}, 4, &out) && out == 4);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){-1, 1, 1, 1}, 4, &out) && out == -4);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){-1, 1, 1, 0}, 4, &out) && out == 0);
    }
    return 0;
}
