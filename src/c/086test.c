#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = anti_shuffle("Hi");
        assert(got && strcmp(got, "Hi") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("hello");
        assert(got && strcmp(got, "ehllo") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("number");
        assert(got && strcmp(got, "bemnru") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("abcd");
        assert(got && strcmp(got, "abcd") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("Hello World!!!");
        assert(got && strcmp(got, "Hello !!!Wdlor") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("Hi. My name is Mister Robot. How are you?");
        assert(got && strcmp(got, ".Hi My aemn is Meirst .Rboot How aer ?ouy") == 0);
        free(got);
    }
    return 0;
}
