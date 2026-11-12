#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_histogram(const char *test, const char *letters, long long count) {
    size_t n;
    letter_count *got = histogram(test, &n);
    bool ok = n == strlen(letters);
    for (size_t i = 0; ok && i < n; i++) ok = got[i].letter == letters[i] && got[i].count == count;
    free(got);
    return ok;
}

int main(void) {
    assert(check_histogram("a b b a", "ab", 2));
    assert(check_histogram("a b c a b", "ab", 2));
    assert(check_histogram("a b c d g", "abcdg", 1));
    assert(check_histogram("r t g", "grt", 1));
    assert(check_histogram("b b b b a", "b", 4));
    assert(check_histogram("", "", 0));
    assert(check_histogram("a", "a", 1));
    return 0;
}
