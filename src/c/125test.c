#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

static void check_words(const char *txt, const char *const *want, size_t want_len) {
    split_result got = split_words(txt);
    assert(got.is_words && got.words_len == want_len);
    for (size_t i = 0; i < want_len; i++) assert(strcmp(got.words[i], want[i]) == 0);
    for (size_t i = 0; i < got.words_len; i++) free(got.words[i]);
    free(got.words);
}

static void check_count(const char *txt, long long want) {
    split_result got = split_words(txt);
    assert(!got.is_words && got.count == want);
}

int main(void) {
    check_words("Hello world!", (const char *const[]){"Hello", "world!"}, 2);
    check_words("Hello,world!", (const char *const[]){"Hello", "world!"}, 2);
    check_words("Hello world,!", (const char *const[]){"Hello", "world,!"}, 2);
    check_words("Hello,Hello,world !", (const char *const[]){"Hello,Hello,world", "!"}, 2);
    check_count("abcdef", 3);
    check_count("aaabb", 2);
    check_count("aaaBb", 1);
    check_count("", 0);
    return 0;
}
