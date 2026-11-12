#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = encrypt("hi");
        assert(got && strcmp(got, "lm") == 0);
        free(got);
    }
    {
        char *got = encrypt("asdfghjkl");
        assert(got && strcmp(got, "ewhjklnop") == 0);
        free(got);
    }
    {
        char *got = encrypt("gf");
        assert(got && strcmp(got, "kj") == 0);
        free(got);
    }
    {
        char *got = encrypt("et");
        assert(got && strcmp(got, "ix") == 0);
        free(got);
    }
    {
        char *got = encrypt("faewfawefaewg");
        assert(got && strcmp(got, "jeiajeaijeiak") == 0);
        free(got);
    }
    {
        char *got = encrypt("hellomyfriend");
        assert(got && strcmp(got, "lippsqcjvmirh") == 0);
        free(got);
    }
    {
        char *got = encrypt("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh");
        assert(got && strcmp(got, "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl") == 0);
        free(got);
    }
    {
        char *got = encrypt("a");
        assert(got && strcmp(got, "e") == 0);
        free(got);
    }
    return 0;
}
