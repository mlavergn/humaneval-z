#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out[2];
        assert(pluck((const long long[]){4, 2, 3}, 3, out));
        assert(out[0] == 2 && out[1] == 1);
    }
    {
        long long out[2];
        assert(pluck((const long long[]){1, 2, 3}, 3, out));
        assert(out[0] == 2 && out[1] == 1);
    }
    {
        long long out[2];
        assert(!pluck(NULL, 0, out));
    }
    {
        long long out[2];
        assert(pluck((const long long[]){5, 0, 3, 0, 4, 2}, 6, out));
        assert(out[0] == 0 && out[1] == 1);
    }
    {
        long long out[2];
        assert(pluck((const long long[]){1, 2, 3, 0, 5, 3}, 6, out));
        assert(out[0] == 0 && out[1] == 3);
    }
    {
        long long out[2];
        assert(pluck((const long long[]){5, 4, 8, 4, 8}, 5, out));
        assert(out[0] == 4 && out[1] == 1);
    }
    {
        long long out[2];
        assert(pluck((const long long[]){7, 6, 7, 1}, 4, out));
        assert(out[0] == 6 && out[1] == 1);
    }
    {
        long long out[2];
        assert(!pluck((const long long[]){7, 9, 7, 1}, 4, out));
    }
    return 0;
}
