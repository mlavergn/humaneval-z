## task_id

```
C/32
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

// Evaluates polynomial with coefficients xs at point x.
// return xs[0] + xs[1] * x + xs[1] * x^2 + .... xs[n] * x^n
double poly(const long long *xs, size_t xs_len, double x) {
    double sum = 0;
    for (size_t i = 0; i < xs_len; i++) sum += (double)xs[i] * pow(x, (double)i);
    return sum;
}

// xs are coefficients of a polynomial.
// find_zero find x such that poly(x) = 0.
// find_zero returns only only zero point, even if there are many.
// Moreover, find_zero only takes list xs having even number of coefficients
// and largest non zero coefficient as it guarantees
// a solution.
// >>> round(find_zero([1, 2]), 2) # f(x) = 1 + 2x
// -0.5
// >>> round(find_zero([-6, 11, -6, 1]), 2) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
// 1.0
double find_zero(const long long *xs, size_t xs_len) {
```

## declaration

```c
double find_zero(const long long *xs, size_t xs_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <math.h>

int main(void) {
    assert(fabs(find_zero((const long long[]){1, 2}, 2) + 0.5) < 1e-4);
    assert(fabs(find_zero((const long long[]){-6, 11, -6, 1}, 4) - 1) < 1e-4);
    return 0;
}
```
