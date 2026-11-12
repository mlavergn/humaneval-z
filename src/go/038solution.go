func DecodeCyclic(s string) string {
    return EncodeCyclic(EncodeCyclic(s))
}
