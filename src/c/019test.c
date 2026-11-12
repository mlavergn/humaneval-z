#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = sort_numbers("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = sort_numbers("three");
        assert(got && strcmp(got, "three") == 0);
        free(got);
    }
    {
        char *got = sort_numbers("three five nine");
        assert(got && strcmp(got, "three five nine") == 0);
        free(got);
    }
    {
        char *got = sort_numbers("five zero four seven nine eight");
        assert(got && strcmp(got, "zero four five seven eight nine") == 0);
        free(got);
    }
    {
        char *got = sort_numbers("six five four three two one zero");
        assert(got && strcmp(got, "zero one two three four five six") == 0);
        free(got);
    }
    return 0;
}
