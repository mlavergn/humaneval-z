#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(can_arrange((const long long[]){1, 2, 4, 3, 5}, 5) == 3);
    assert(can_arrange((const long long[]){1, 2, 4, 5}, 4) == -1);
    assert(can_arrange((const long long[]){1, 4, 2, 5, 6, 7, 8, 9, 10}, 9) == 2);
    assert(can_arrange((const long long[]){4, 8, 5, 7, 3}, 5) == 4);
    assert(can_arrange(NULL, 0) == -1);
    return 0;
}
