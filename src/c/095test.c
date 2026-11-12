#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    assert(check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"b", "banana"}}, 2));
    assert(!check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"A", "banana"}, {"B", "banana"}}, 3));
    assert(!check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"5", "banana"}, {"a", "apple"}}, 3));
    assert(!check_dict_case((const char *const[][2]){{"Name", "John"}, {"Age", "36"}, {"City", "Houston"}}, 3));
    assert(check_dict_case((const char *const[][2]){{"STATE", "NC"}, {"ZIP", "12345"}}, 2));
    assert(check_dict_case((const char *const[][2]){{"fruit", "Orange"}, {"taste", "Sweet"}}, 2));
    assert(!check_dict_case(NULL, 0));
    return 0;
}
