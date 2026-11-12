bool check_if_last_char_is_a_letter(const char *txt) {
    const char *last_space = strrchr(txt, ' ');
    const char *last_word = last_space ? last_space + 1 : txt;
    return strlen(last_word) == 1 && isalpha((unsigned char)last_word[0]);
}
