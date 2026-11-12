func strongestExtension(className: String, extensions: [String]) -> String {
    func strength(_ s: String) -> Int {
        return s.filter { $0.isASCII && $0.isUppercase }.count - s.filter { $0.isASCII && $0.isLowercase }.count
    }
    var strong = extensions[0]
    for s in extensions.dropFirst() where strength(s) > strength(strong) {
        strong = s
    }
    return "\(className).\(strong)"
}
