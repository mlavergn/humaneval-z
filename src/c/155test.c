#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out[2];
        even_odd_count(7, out);
        assert(out[0] == 0 && out[1] == 1);
    }
    {
        long long out[2];
        even_odd_count(-78, out);
        assert(out[0] == 1 && out[1] == 1);
    }
    {
        long long out[2];
        even_odd_count(3452, out);
        assert(out[0] == 2 && out[1] == 2);
    }
    {
        long long out[2];
        even_odd_count(346211, out);
        assert(out[0] == 3 && out[1] == 3);
    }
    {
        long long out[2];
        even_odd_count(-345821, out);
        assert(out[0] == 3 && out[1] == 3);
    }
    {
        long long out[2];
        even_odd_count(-2, out);
        assert(out[0] == 1 && out[1] == 0);
    }
    {
        long long out[2];
        even_odd_count(-45347, out);
        assert(out[0] == 2 && out[1] == 3);
    }
    {
        long long out[2];
        even_odd_count(0, out);
        assert(out[0] == 1 && out[1] == 0);
    }
    return 0;
}
