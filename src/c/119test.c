#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = match_parens((const char *const[]){"()(", ")"}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")", ")"}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"(()(())", "())())"}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")())", "(()()("}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"(())))", "(()())(("}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"()", "())"}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"(()(", "()))()"}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"((((", "((())"}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")(()", "(()("}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")(", ")("}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){"(", ")"}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")", "("}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    return 0;
}
