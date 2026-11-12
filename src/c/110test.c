#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = exchange((const long long[]){1, 2, 3, 4}, 4, (const long long[]){1, 2, 3, 4}, 4);
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){1, 2, 3, 4}, 4, (const long long[]){1, 5, 3, 4}, 4);
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){1, 2, 3, 4}, 4, (const long long[]){2, 1, 4, 3}, 4);
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){5, 7, 3}, 3, (const long long[]){2, 6, 4}, 3);
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){5, 7, 3}, 3, (const long long[]){2, 6, 3}, 3);
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){3, 2, 6, 1, 8, 9}, 6, (const long long[]){3, 5, 5, 1, 1, 1}, 6);
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){100, 200}, 2, (const long long[]){200, 200}, 2);
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    return 0;
}
