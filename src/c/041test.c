#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(car_race_collision(2) == 4);
    assert(car_race_collision(3) == 9);
    assert(car_race_collision(4) == 16);
    assert(car_race_collision(8) == 64);
    assert(car_race_collision(10) == 100);
    return 0;
}
