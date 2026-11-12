#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(do_algebra((const char *const[]){"**", "*", "+"}, 3, (const long long[]){2, 3, 4, 5}, 4) == 37);
    assert(do_algebra((const char *const[]){"+", "*", "-"}, 3, (const long long[]){2, 3, 4, 5}, 4) == 9);
    assert(do_algebra((const char *const[]){"//", "*"}, 2, (const long long[]){7, 3, 4}, 3) == 8);
    return 0;
}
