#undef NDEBUG
#include <assert.h>
#include <math.h>
#include <stdlib.h>

int main(void) {
    // Random polynomials with an even number of non-zero coefficients (fixed seed).
    srand(42);
    for (int t = 0; t < 100; t++) {
        size_t ncoeff = 2 * (size_t)(1 + rand() % 3);
        long long coeffs[6];
        for (size_t j = 0; j < ncoeff; j++) {
            coeffs[j] = -10 + rand() % 20;
            if (coeffs[j] == 0) coeffs[j] = 1;
        }
        double solution = find_zero(coeffs, ncoeff);
        assert(fabs(poly(coeffs, ncoeff, solution)) < 1e-4);
    }
    return 0;
}
