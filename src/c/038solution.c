char *decode_cyclic(const char *s) {
    char *once = encode_cyclic(s);
    if (!once) return NULL;
    char *result = encode_cyclic(once);
    free(once);
    return result;
}
