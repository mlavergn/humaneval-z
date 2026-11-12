bool valid_date(const char *date) {
    while (isspace((unsigned char)*date)) date++;
    long long parts[3];
    const char *p = date;
    for (int k = 0; k < 3; k++) {
        char *end;
        if (!isdigit((unsigned char)*p) && *p != '-' && *p != '+') return false;
        parts[k] = strtoll(p, &end, 10);
        if (end == p) return false;
        p = end;
        if (k < 2) {
            if (*p != '-') return false;
            p++;
        }
    }
    while (isspace((unsigned char)*p)) p++;
    if (*p != '\0') return false;
    long long month = parts[0], day = parts[1];
    if (month < 1 || month > 12) return false;
    long long max_day = month == 2 ? 29 : (month == 4 || month == 6 || month == 9 || month == 11) ? 30 : 31;
    return day >= 1 && day <= max_day;
}
