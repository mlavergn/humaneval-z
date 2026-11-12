#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(prime_length("Hello"));
    assert(prime_length("abcdcba"));
    assert(prime_length("kittens"));
    assert(!prime_length("orange"));
    assert(prime_length("wow"));
    assert(prime_length("world"));
    assert(prime_length("MadaM"));
    assert(prime_length("Wow"));
    assert(!prime_length(""));
    assert(prime_length("HI"));
    assert(prime_length("go"));
    assert(!prime_length("gogo"));
    assert(!prime_length("aaaaaaaaaaaaaaa"));
    assert(prime_length("Madam"));
    assert(!prime_length("M"));
    assert(!prime_length("0"));
    return 0;
}
