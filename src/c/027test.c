#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = flip_case("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = flip_case("Hello!");
        assert(got && strcmp(got, "hELLO!") == 0);
        free(got);
    }
    {
        char *got = flip_case("These violent delights have violent ends");
        assert(got && strcmp(got, "tHESE VIOLENT DELIGHTS HAVE VIOLENT ENDS") == 0);
        free(got);
    }
    return 0;
}
