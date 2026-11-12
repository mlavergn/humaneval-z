#undef NDEBUG
#include <assert.h>
#include <stdlib.h>

int main(void) {
    assert(add(0, 1) == 1);
    assert(add(1, 0) == 1);
    assert(add(2, 3) == 5);
    assert(add(5, 7) == 12);
    assert(add(7, 5) == 12);
    srand(42);
    for (int t = 0; t < 100; t++) {
        long long x = rand() % 1000, y = rand() % 1000;
        assert(add(x, y) == x + y);
    }
    return 0;
}
