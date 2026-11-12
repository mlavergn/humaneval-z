#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <string.h>

#define I(v) ((value){.kind = VALUE_INT, .as.i = (v)})
#define F(v) ((value){.kind = VALUE_FLOAT, .as.f = (v)})
#define S(v) ((value){.kind = VALUE_STRING, .as.s = (v)})

static bool same(value a, value b) {
    if (a.kind != b.kind) return false;
    switch (a.kind) {
    case VALUE_INT: return a.as.i == b.as.i;
    case VALUE_FLOAT: return a.as.f == b.as.f;
    case VALUE_STRING: return strcmp(a.as.s, b.as.s) == 0;
    default: return false;
    }
}

int main(void) {
    value out;
    assert(compare_one(I(1), I(2), &out) && same(out, I(2)));
    assert(compare_one(I(1), F(2.5), &out) && same(out, F(2.5)));
    assert(compare_one(I(2), I(3), &out) && same(out, I(3)));
    assert(compare_one(I(5), I(6), &out) && same(out, I(6)));
    assert(compare_one(I(1), S("2,3"), &out) && same(out, S("2,3")));
    assert(compare_one(S("5,1"), S("6"), &out) && same(out, S("6")));
    assert(compare_one(S("1"), S("2"), &out) && same(out, S("2")));
    assert(!compare_one(S("1"), I(1), &out));
    return 0;
}
