#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(valid_date("03-11-2000"));
    assert(!valid_date("15-01-2012"));
    assert(!valid_date("04-0-2040"));
    assert(valid_date("06-04-2020"));
    assert(valid_date("01-01-2007"));
    assert(!valid_date("03-32-2011"));
    assert(!valid_date(""));
    assert(!valid_date("04-31-3000"));
    assert(valid_date("06-06-2005"));
    assert(!valid_date("21-31-2000"));
    assert(valid_date("04-12-2003"));
    assert(!valid_date("04122003"));
    assert(!valid_date("20030412"));
    assert(!valid_date("2003-04"));
    assert(!valid_date("2003-04-12"));
    assert(!valid_date("04-2003"));
    return 0;
}
