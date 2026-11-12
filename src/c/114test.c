#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(minsubarraysum((const long long[]){2, 3, 4, 1, 2, 4}, 6) == 1);
    assert(minsubarraysum((const long long[]){-1, -2, -3}, 3) == -6);
    assert(minsubarraysum((const long long[]){-1, -2, -3, 2, -10}, 5) == -14);
    assert(minsubarraysum((const long long[]){-9999999999999999}, 1) == -9999999999999999);
    assert(minsubarraysum((const long long[]){0, 10, 20, 1000000}, 4) == 0);
    assert(minsubarraysum((const long long[]){-1, -2, -3, 10, -5}, 5) == -6);
    assert(minsubarraysum((const long long[]){100, -1, -2, -3, 10, -5}, 6) == -6);
    assert(minsubarraysum((const long long[]){10, 11, 13, 8, 3, 4}, 6) == 3);
    assert(minsubarraysum((const long long[]){100, -33, 32, -1, 0, -2}, 6) == -33);
    assert(minsubarraysum((const long long[]){-10}, 1) == -10);
    assert(minsubarraysum((const long long[]){7}, 1) == 7);
    assert(minsubarraysum((const long long[]){1, -1}, 2) == -1);
    return 0;
}
