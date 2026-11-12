#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

static void check_reverse_delete(const char *s, const char *c, const char *string, bool is_palindrome) {
    reverse_delete_result got = reverse_delete(s, c);
    assert(got.string && strcmp(got.string, string) == 0);
    assert(got.is_palindrome == is_palindrome);
    free(got.string);
}

int main(void) {
    check_reverse_delete("abcde", "ae", "bcd", false);
    check_reverse_delete("abcdef", "b", "acdef", false);
    check_reverse_delete("abcdedcba", "ab", "cdedc", true);
    check_reverse_delete("dwik", "w", "dik", false);
    check_reverse_delete("a", "a", "", true);
    check_reverse_delete("abcdedcba", "", "abcdedcba", true);
    check_reverse_delete("abcdedcba", "v", "abcdedcba", true);
    check_reverse_delete("vabba", "v", "abba", true);
    check_reverse_delete("mamma", "mia", "", true);
    return 0;
}
