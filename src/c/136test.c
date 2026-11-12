#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    extremes got;
    got = largest_smallest_integers((const long long[]){2, 4, 1, 3, 5, 7}, 6);
    assert(!got.has_negative);
    assert(got.has_positive && got.smallest_positive == 1);
    got = largest_smallest_integers((const long long[]){2, 4, 1, 3, 5, 7, 0}, 7);
    assert(!got.has_negative);
    assert(got.has_positive && got.smallest_positive == 1);
    got = largest_smallest_integers((const long long[]){1, 3, 2, 4, 5, 6, -2}, 7);
    assert(got.has_negative && got.largest_negative == -2);
    assert(got.has_positive && got.smallest_positive == 1);
    got = largest_smallest_integers((const long long[]){4, 5, 3, 6, 2, 7, -7}, 7);
    assert(got.has_negative && got.largest_negative == -7);
    assert(got.has_positive && got.smallest_positive == 2);
    got = largest_smallest_integers((const long long[]){7, 3, 8, 4, 9, 2, 5, -9}, 8);
    assert(got.has_negative && got.largest_negative == -9);
    assert(got.has_positive && got.smallest_positive == 2);
    got = largest_smallest_integers(NULL, 0);
    assert(!got.has_negative);
    assert(!got.has_positive);
    got = largest_smallest_integers((const long long[]){0}, 1);
    assert(!got.has_negative);
    assert(!got.has_positive);
    got = largest_smallest_integers((const long long[]){-1, -3, -5, -6}, 4);
    assert(got.has_negative && got.largest_negative == -1);
    assert(!got.has_positive);
    got = largest_smallest_integers((const long long[]){-1, -3, -5, -6, 0}, 5);
    assert(got.has_negative && got.largest_negative == -1);
    assert(!got.has_positive);
    got = largest_smallest_integers((const long long[]){-6, -4, -4, -3, 1}, 5);
    assert(got.has_negative && got.largest_negative == -3);
    assert(got.has_positive && got.smallest_positive == 1);
    got = largest_smallest_integers((const long long[]){-6, -4, -4, -3, -100, 1}, 6);
    assert(got.has_negative && got.largest_negative == -3);
    assert(got.has_positive && got.smallest_positive == 1);
    return 0;
}
