#undef NDEBUG
#include <assert.h>
#include <math.h>

int main(void) {
    assert(truncate_number(3.5) == 0.5);
    assert(fabs(truncate_number(1.33) - 0.33) < 1e-6);
    assert(fabs(truncate_number(123.456) - 0.456) < 1e-6);
    return 0;
}
