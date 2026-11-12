#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 3.9, 4.0, 5.0, 2.2}, 6, out);
        assert(out[0] == 3.9 && out[1] == 4.0);
    }
    {
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 5.9, 4.0, 5.0}, 5, out);
        assert(out[0] == 5.0 && out[1] == 5.9);
    }
    {
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 3.0, 4.0, 5.0, 2.2}, 6, out);
        assert(out[0] == 2.0 && out[1] == 2.2);
    }
    {
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 6, out);
        assert(out[0] == 2.0 && out[1] == 2.0);
    }
    {
        double out[2];
        find_closest_elements((const double[]){1.1, 2.2, 3.1, 4.1, 5.1}, 5, out);
        assert(out[0] == 2.2 && out[1] == 3.1);
    }
    return 0;
}
