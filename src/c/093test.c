#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = encode("TEST");
        assert(got && strcmp(got, "tgst") == 0);
        free(got);
    }
    {
        char *got = encode("Mudasir");
        assert(got && strcmp(got, "mWDCSKR") == 0);
        free(got);
    }
    {
        char *got = encode("YES");
        assert(got && strcmp(got, "ygs") == 0);
        free(got);
    }
    {
        char *got = encode("This is a message");
        assert(got && strcmp(got, "tHKS KS C MGSSCGG") == 0);
        free(got);
    }
    {
        char *got = encode("I DoNt KnOw WhAt tO WrItE");
        assert(got && strcmp(got, "k dQnT kNqW wHcT Tq wRkTg") == 0);
        free(got);
    }
    return 0;
}
