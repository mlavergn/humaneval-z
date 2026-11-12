#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(move_one_ball((const long long[]){3, 4, 5, 1, 2}, 5));
    assert(move_one_ball((const long long[]){3, 5, 10, 1, 2}, 5));
    assert(!move_one_ball((const long long[]){4, 3, 1, 2}, 4));
    assert(!move_one_ball((const long long[]){3, 5, 4, 1, 2}, 5));
    assert(move_one_ball(NULL, 0));
    return 0;
}
