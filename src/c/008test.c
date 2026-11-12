#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out[2];
        sum_product(NULL, 0, out);
        assert(out[0] == 0 && out[1] == 1);
    }
    {
        long long out[2];
        sum_product((const long long[]){1, 1, 1}, 3, out);
        assert(out[0] == 3 && out[1] == 1);
    }
    {
        long long out[2];
        sum_product((const long long[]){100, 0}, 2, out);
        assert(out[0] == 100 && out[1] == 0);
    }
    {
        long long out[2];
        sum_product((const long long[]){3, 5, 7}, 3, out);
        assert(out[0] == 15 && out[1] == 105);
    }
    {
        long long out[2];
        sum_product((const long long[]){10}, 1, out);
        assert(out[0] == 10 && out[1] == 10);
    }
    return 0;
}
