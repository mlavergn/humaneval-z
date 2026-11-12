#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = string_to_md5("Hello world");
        assert(got && strcmp(got, "3e25960a79dbc69b674cd4ec67a72c62") == 0);
        free(got);
    }
    {
        char *got = string_to_md5("");
        assert(got == NULL);
    }
    {
        char *got = string_to_md5("A B C");
        assert(got && strcmp(got, "0ef78513b0cb8cef12743f5aeb35f888") == 0);
        free(got);
    }
    {
        char *got = string_to_md5("password");
        assert(got && strcmp(got, "5f4dcc3b5aa765d61d8327deb882cf99") == 0);
        free(got);
    }
    return 0;
}
