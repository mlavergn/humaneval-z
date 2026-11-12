#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_strs(char **got, size_t n, const char *const *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (strcmp(got[i], want[i]) != 0) return false;
    }
    return true;
}

static void free_strs(char **xs, size_t n) {
    for (size_t i = 0; i < n; i++) free(xs[i]);
    free(xs);
}

int main(void) {
    {
        size_t n;
        char **got = odd_count((const char *const[]){"1234567"}, 1, &n);
        assert(check_strs(got, n, (const char *const[]){"the number of odd elements 4n the str4ng 4 of the 4nput."}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = odd_count((const char *const[]){"3", "11111111"}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = odd_count((const char *const[]){"271", "137", "314"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."}, 3));
        free_strs(got, n);
    }
    return 0;
}
