#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = file_name_check("example.txt");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("1example.dll");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("s1sdf3.asd");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("K.dll");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("MY16FILE3.exe");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("His12FILE94.exe");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("_Y.txt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("?aREYA.exe");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("/this_is_valid.dll");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("this_is_valid.wow");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("this_is_valid.txt");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("this_is_valid.txtexe");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("#this2_i4s_5valid.ten");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("@this1_is6_valid.exe");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("this_is_12valid.6exe4.txt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("all.exe.txt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("I563_No.exe");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("Is3youfault.txt");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("no_one#knows.dll");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("1I563_Yes3.exe");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("I563_Yes3.txtt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("final..txt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("final132");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("_f4indsartal132.");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check(".txt");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    {
        char *got = file_name_check("s.");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    return 0;
}
