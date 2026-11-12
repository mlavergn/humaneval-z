## task_id

```
C/159
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

// You're a hungry rabbit, and you already have Eaten a certain number of carrots,
// but now you need to Eat more carrots to complete the day's meals.
// you should return an array of [ total number of Eaten carrots after your meals,
// the number of carrots left after your meals ]
// if there are not enough remaining carrots, you will Eat all remaining carrots, but will still be hungry.
//
// Example:
// * eat(5, 6, 10) -> [11, 4]
// * eat(4, 8, 9) -> [12, 1]
// * eat(1, 10, 10) -> [11, 0]
// * eat(2, 11, 5) -> [7, 0]
//
// Variables:
// @number : integer
// the number of carrots that you have Eaten.
// @need : integer
// the number of carrots that you need to Eat.
// @remaining : integer
// the number of remaining carrots thet exist in stock
//
// Constrain:
// * 0 <= number <= 1000
// * 0 <= need <= 1000
// * 0 <= remaining <= 1000
//
// Have fun :)
// The result is written to out[0] and out[1].
void eat(long long number, long long need, long long remaining, long long out[2]) {
```

## declaration

```c
void eat(long long number, long long need, long long remaining, long long out[2]) {
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
        eat(5, 6, 10, out);
        assert(out[0] == 11 && out[1] == 4);
    }
    {
        long long out[2];
        eat(4, 8, 9, out);
        assert(out[0] == 12 && out[1] == 1);
    }
    {
        long long out[2];
        eat(1, 10, 10, out);
        assert(out[0] == 11 && out[1] == 0);
    }
    {
        long long out[2];
        eat(2, 11, 5, out);
        assert(out[0] == 7 && out[1] == 0);
    }
    return 0;
}
```
