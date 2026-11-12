## task_id

```
C/81
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

// It is the last week of the semester and the teacher has to give the grades
// to students. The teacher has been making her own algorithm for grading.
// The only problem is, she has lost the code she used for grading.
// She has given you a list of GPAs for some students and you have to write
// a function that can output a list of letter grades using the following table:
// GPA       |    Letter grade
// 4.0                A+
// > 3.7                A
// > 3.3                A-
// > 3.0                B+
// > 2.7                B
// > 2.3                B-
// > 2.0                C+
// > 1.7                C
// > 1.3                C-
// > 1.0                D+
// > 0.7                D
// > 0.0                D-
// 0.0                E
//
//
// Example:
// grade_equation([4.0, 3, 1.7, 2, 3.5]) ==> ["A+", "B", "C-", "C", "A-"]
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **numerical_letter_grade(const double *grades, size_t grades_len, size_t *out_len) {
```

## declaration

```c
char **numerical_letter_grade(const double *grades, size_t grades_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_strs(char **got, size_t n, const char *const *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (strcmp(got[i], want[i]) != 0) return false;
    }
    return true;
}

static void free_strs(char **xs, size_t n) {
    for (size_t i = 0; i < n; i++) free(xs[i]);
    free(xs);
}

int main(void) {
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){4.0, 3.0, 1.7, 2.0, 3.5}, 5, &n);
        assert(check_strs(got, n, (const char *const[]){"A+", "B", "C-", "C", "A-"}, 5));
        free_strs(got, n);
    }
    return 0;
}
```
