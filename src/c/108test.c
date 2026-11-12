#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    assert(count_nums(NULL, 0) == 0);
    assert(count_nums((const long long[]){-1, -2, 0}, 3) == 0);
    assert(count_nums((const long long[]){1, 1, 2, -2, 3, 4, 5}, 7) == 6);
    assert(count_nums((const long long[]){1, 6, 9, -6, 0, 1, 5}, 7) == 5);
    assert(count_nums((const long long[]){1, 100, 98, -7, 1, -1}, 6) == 4);
    assert(count_nums((const long long[]){12, 23, 34, -45, -56, 0}, 6) == 5);
    assert(count_nums((const long long[]){0, 1}, 2) == 1);
    assert(count_nums((const long long[]){1}, 1) == 1);
    return 0;
}
