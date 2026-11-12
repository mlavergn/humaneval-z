#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out[2];
        eat(5, 6, 10, out);
        assert(out[0] == 11 && out[1] == 4);
    }
    {
        long long out[2];
        eat(4, 8, 9, out);
        assert(out[0] == 12 && out[1] == 1);
    }
    {
        long long out[2];
        eat(1, 10, 10, out);
        assert(out[0] == 11 && out[1] == 0);
    }
    {
        long long out[2];
        eat(2, 11, 5, out);
        assert(out[0] == 7 && out[1] == 0);
    }
    {
        long long out[2];
        eat(4, 5, 7, out);
        assert(out[0] == 9 && out[1] == 2);
    }
    {
        long long out[2];
        eat(4, 5, 1, out);
        assert(out[0] == 5 && out[1] == 0);
    }
    return 0;
}
