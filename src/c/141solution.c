char *file_name_check(const char *file_name) {
    const char *answer = "Yes";
    const char *dot = strchr(file_name, '.');
    if (!dot || strchr(dot + 1, '.')) {
        answer = "No";
    } else if (strcmp(dot + 1, "txt") != 0 && strcmp(dot + 1, "exe") != 0 && strcmp(dot + 1, "dll") != 0) {
        answer = "No";
    } else if (dot == file_name || !isalpha((unsigned char)file_name[0])) {
        answer = "No";
    } else {
        int digit_count = 0;
        for (const char *p = file_name; p < dot; p++) {
            if (isdigit((unsigned char)*p)) digit_count++;
        }
        if (digit_count > 3) answer = "No";
    }
    char *result = malloc(4);
    if (!result) return NULL;
    strcpy(result, answer);
    return result;
}
