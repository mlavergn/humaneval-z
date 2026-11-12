#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(digitsum("") == 0);
    assert(digitsum("abAB") == 131);
    assert(digitsum("abcCd") == 67);
    assert(digitsum("helloE") == 69);
    assert(digitsum("woArBld") == 131);
    assert(digitsum("aAaaaXa") == 153);
    assert(digitsum(" How are yOu?") == 151);
    assert(digitsum("You arE Very Smart") == 327);
    return 0;
}
