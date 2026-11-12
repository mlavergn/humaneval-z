#undef NDEBUG
#include <assert.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    // decode_cyclic(encode_cyclic(s)) == s for random lowercase strings (fixed seed).
    srand(42);
    for (int t = 0; t < 100; t++) {
        char s[21];
        size_t len = 10 + (size_t)(rand() % 10);
        for (size_t j = 0; j < len; j++) s[j] = (char)('a' + rand() % 25);
        s[len] = '\0';
        char *encoded = encode_cyclic(s);
        char *decoded = decode_cyclic(encoded);
        assert(strcmp(decoded, s) == 0);
        free(encoded);
        free(decoded);
    }
    return 0;
}
