bool compare_one(value a, value b, value *out) {
    double f[2];
    const value *v[2] = {&a, &b};
    for (int k = 0; k < 2; k++) {
        if (v[k]->kind == VALUE_INT) {
            f[k] = (double)v[k]->as.i;
        } else if (v[k]->kind == VALUE_FLOAT) {
            f[k] = v[k]->as.f;
        } else if (v[k]->kind == VALUE_STRING) {
            // A real number written as a string may use '.' or ','.
            char buf[64];
            snprintf(buf, sizeof buf, "%s", v[k]->as.s);
            for (char *p = buf; *p; p++) {
                if (*p == ',') *p = '.';
            }
            f[k] = strtod(buf, NULL);
        } else {
            f[k] = 0;
        }
    }
    if (f[0] == f[1]) return false;
    *out = f[0] > f[1] ? a : b;
    return true;
}
