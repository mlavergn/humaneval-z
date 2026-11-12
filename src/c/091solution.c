long long is_bored(const char *s) {
    long long sum = 0;
    bool sentence_start = true;
    for (const char *p = s; *p; p++) {
        if (strchr(".?!", *p)) {
            sentence_start = true;
        } else if (sentence_start && !isspace((unsigned char)*p)) {
            if (p[0] == 'I' && p[1] == ' ') sum++;
            sentence_start = false;
        }
    }
    return sum;
}
