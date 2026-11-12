char *string_to_md5(const char *text) {
    if (text[0] == '\0') return NULL;
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int digest_len = 0;
    if (!EVP_Digest(text, strlen(text), digest, &digest_len, EVP_md5(), NULL)) return NULL;
    char *result = malloc(2 * digest_len + 1);
    if (!result) return NULL;
    for (unsigned int i = 0; i < digest_len; i++) snprintf(result + 2 * i, 3, "%02x", digest[i]);
    return result;
}
