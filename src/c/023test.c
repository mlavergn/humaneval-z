#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(string_length("") == 0);
    assert(string_length("x") == 1);
    assert(string_length("asdasnakj") == 9);
    return 0;
}
