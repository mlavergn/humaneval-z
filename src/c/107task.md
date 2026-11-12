## task_id

```
C/107
```

## prompt

```c
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
//
// Example 1:
//
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
//
// Example 2:
//
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
//
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
// The result is written to out[0] and out[1].
void even_odd_palindrome(long long n, long long out[2]) {
```

## declaration

```c
void even_odd_palindrome(long long n, long long out[2]) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
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
    return 0;
}
```
