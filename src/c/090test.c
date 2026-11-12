#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    long long out;
    assert(next_smallest((const long long[]){1, 2, 3, 4, 5}, 5, &out) && out == 2);
    assert(next_smallest((const long long[]){5, 1, 4, 3, 2}, 5, &out) && out == 2);
    assert(!next_smallest(NULL, 0, &out));
    assert(!next_smallest((const long long[]){1, 1}, 2, &out));
    assert(next_smallest((const long long[]){1, 1, 1, 1, 0}, 5, &out) && out == 1);
    assert(!next_smallest((const long long[]){1, 1}, 2, &out));
    assert(next_smallest((const long long[]){-35, 34, 12, -45}, 4, &out) && out == -35);
    return 0;
}
