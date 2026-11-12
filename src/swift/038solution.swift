func decodeCyclic(_ s: String) -> String {
    return encodeCyclic(encodeCyclic(s))
}
