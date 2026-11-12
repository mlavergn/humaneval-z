#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(correct_bracketing("<>"));
    assert(correct_bracketing("<<><>>"));
    assert(correct_bracketing("<><><<><>><>"));
    assert(correct_bracketing("<><><<<><><>><>><<><><<>>>"));
    assert(!correct_bracketing("<<<><>>>>"));
    assert(!correct_bracketing("><<>"));
    assert(!correct_bracketing("<"));
    assert(!correct_bracketing("<<<<"));
    assert(!correct_bracketing(">"));
    assert(!correct_bracketing("<<>"));
    assert(!correct_bracketing("<><><<><>><>><<>"));
    assert(!correct_bracketing("<><><<><>><>>><>"));
    return 0;
}
