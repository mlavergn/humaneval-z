#undef NDEBUG
#include <assert.h>
#include <math.h>

int main(void) {
    assert(fabs(mean_absolute_deviation((const double[]){1.0, 2.0, 3.0}, 3) - 2.0 / 3.0) < 1e-6);
    assert(fabs(mean_absolute_deviation((const double[]){1.0, 2.0, 3.0, 4.0}, 4) - 1.0) < 1e-6);
    assert(fabs(mean_absolute_deviation((const double[]){1.0, 2.0, 3.0, 4.0, 5.0}, 5) - 6.0 / 5.0) < 1e-6);
    return 0;
}
