#undef NDEBUG
#include <assert.h>

#define I(v) ((value){.kind = VALUE_INT, .as.i = (v)})
#define F(v) ((value){.kind = VALUE_FLOAT, .as.f = (v)})

int main(void) {
    assert(any_int(I(2), I(3), I(1)));
    assert(!any_int(F(2.5), I(2), I(3)));
    assert(!any_int(F(1.5), I(5), F(3.5)));
    assert(!any_int(I(2), I(6), I(2)));
    assert(any_int(I(4), I(2), I(2)));
    assert(!any_int(F(2.2), F(2.2), F(2.2)));
    assert(any_int(I(-4), I(6), I(2)));
    assert(any_int(I(2), I(1), I(1)));
    assert(any_int(I(3), I(4), I(7)));
    assert(!any_int(F(3.0), I(4), I(7)));
    return 0;
}
