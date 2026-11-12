#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

static bool check_coords(const coord *got, size_t n, const coord *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i].row != want[i].row || got[i].col != want[i].col) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        coord *got = get_row((const long long *const[]){(const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 1, 6}, (const long long[]){1, 2, 3, 4, 5, 1}}, (const size_t[]){6, 6, 6}, 3, 1, &n);
        assert(check_coords(got, n, (const coord[]){{0, 0}, {1, 4}, {1, 0}, {2, 5}, {2, 0}}, 5));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){(const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}}, (const size_t[]){6, 6, 6, 6, 6, 6}, 6, 2, &n);
        assert(check_coords(got, n, (const coord[]){{0, 1}, {1, 1}, {2, 1}, {3, 1}, {4, 1}, {5, 1}}, 6));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){(const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 1, 3, 4, 5, 6}, (const long long[]){1, 2, 1, 4, 5, 6}, (const long long[]){1, 2, 3, 1, 5, 6}, (const long long[]){1, 2, 3, 4, 1, 6}, (const long long[]){1, 2, 3, 4, 5, 1}}, (const size_t[]){6, 6, 6, 6, 6, 6, 6}, 7, 1, &n);
        assert(check_coords(got, n, (const coord[]){{0, 0}, {1, 0}, {2, 1}, {2, 0}, {3, 2}, {3, 0}, {4, 3}, {4, 0}, {5, 4}, {5, 0}, {6, 5}, {6, 0}}, 12));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){NULL}, (const size_t[]){0}, 1, 1, &n);
        assert(check_coords(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){(const long long[]){1}}, (const size_t[]){1}, 1, 2, &n);
        assert(check_coords(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){NULL, (const long long[]){1}, (const long long[]){1, 2, 3}}, (const size_t[]){0, 1, 3}, 3, 3, &n);
        assert(check_coords(got, n, (const coord[]){{2, 2}}, 1));
        free(got);
    }
    return 0;
}
