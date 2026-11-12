#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = strongest_extension("Watashi", (const char *const[]){"tEN", "niNE", "eIGHt8OKe"}, 3);
        assert(got && strcmp(got, "Watashi.eIGHt8OKe") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("Boku123", (const char *const[]){"nani", "NazeDa", "YEs.WeCaNe", "32145tggg"}, 4);
        assert(got && strcmp(got, "Boku123.YEs.WeCaNe") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("__YESIMHERE", (const char *const[]){"t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"}, 6);
        assert(got && strcmp(got, "__YESIMHERE.NuLl__") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("K", (const char *const[]){"Ta", "TAR", "t234An", "cosSo"}, 4);
        assert(got && strcmp(got, "K.TAR") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("__HAHA", (const char *const[]){"Tab", "123", "781345", "-_-"}, 4);
        assert(got && strcmp(got, "__HAHA.123") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("YameRore", (const char *const[]){"HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"}, 5);
        assert(got && strcmp(got, "YameRore.okIWILL123") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("finNNalLLly", (const char *const[]){"Die", "NowW", "Wow", "WoW"}, 4);
        assert(got && strcmp(got, "finNNalLLly.WoW") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("_", (const char *const[]){"Bb", "91245"}, 2);
        assert(got && strcmp(got, "_.Bb") == 0);
        free(got);
    }
    {
        char *got = strongest_extension("Sp", (const char *const[]){"671235", "Bb"}, 2);
        assert(got && strcmp(got, "Sp.671235") == 0);
        free(got);
    }
    return 0;
}
