#undef NDEBUG
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void check_base(long long x, long long base, const char *want) {
    char *got = change_base(x, base);
    assert(got && strcmp(got, want) == 0);
    free(got);
}

int main(void) {
    check_base(8, 3, "22");
    check_base(9, 3, "100");
    check_base(234, 2, "11101010");
    check_base(16, 2, "10000");
    check_base(8, 2, "1000");
    check_base(7, 2, "111");
    for (long long i = 2; i < 8; i++) {
        char want[4];
        snprintf(want, sizeof want, "%lld", i);
        check_base(i, i + 1, want);
    }
    return 0;
}
