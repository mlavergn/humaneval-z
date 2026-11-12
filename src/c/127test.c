#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = intersection((const long long[2]){1, 2}, (const long long[2]){2, 3});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-1, 1}, (const long long[2]){0, 4});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-3, -1}, (const long long[2]){-5, 5});
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-2, 2}, (const long long[2]){-4, 0});
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-11, 2}, (const long long[2]){-1, -1});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){1, 2}, (const long long[2]){3, 5});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){1, 2}, (const long long[2]){1, 2});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-2, -2}, (const long long[2]){-3, -2});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    return 0;
}
