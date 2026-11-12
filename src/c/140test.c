#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = fix_spaces("Example");
        assert(got && strcmp(got, "Example") == 0);
        free(got);
    }
    {
        char *got = fix_spaces("Mudasir Hanif ");
        assert(got && strcmp(got, "Mudasir_Hanif_") == 0);
        free(got);
    }
    {
        char *got = fix_spaces("Yellow Yellow  Dirty  Fellow");
        assert(got && strcmp(got, "Yellow_Yellow__Dirty__Fellow") == 0);
        free(got);
    }
    {
        char *got = fix_spaces("Exa   mple");
        assert(got && strcmp(got, "Exa-mple") == 0);
        free(got);
    }
    {
        char *got = fix_spaces("   Exa 1 2 2 mple");
        assert(got && strcmp(got, "-Exa_1_2_2_mple") == 0);
        free(got);
    }
    return 0;
}
