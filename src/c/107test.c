#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        long long out[2];
        even_odd_palindrome(123, out);
        assert(out[0] == 8 && out[1] == 13);
    }
    {
        long long out[2];
        even_odd_palindrome(12, out);
        assert(out[0] == 4 && out[1] == 6);
    }
    {
        long long out[2];
        even_odd_palindrome(3, out);
        assert(out[0] == 1 && out[1] == 2);
    }
    {
        long long out[2];
        even_odd_palindrome(63, out);
        assert(out[0] == 6 && out[1] == 8);
    }
    {
        long long out[2];
        even_odd_palindrome(25, out);
        assert(out[0] == 5 && out[1] == 6);
    }
    {
        long long out[2];
        even_odd_palindrome(19, out);
        assert(out[0] == 4 && out[1] == 6);
    }
    {
        long long out[2];
        even_odd_palindrome(9, out);
        assert(out[0] == 4 && out[1] == 5);
    }
    {
        long long out[2];
        even_odd_palindrome(1, out);
        assert(out[0] == 0 && out[1] == 1);
    }
    return 0;
}
