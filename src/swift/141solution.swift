func fileNameCheck(_ fileName: String) -> String {
    let parts = fileName.split(separator: ".", omittingEmptySubsequences: false)
    guard parts.count == 2, ["txt", "exe", "dll"].contains(parts[1]) else { return "No" }
    guard let first = parts[0].first, first.isASCII, first.isLetter else { return "No" }
    return parts[0].filter { $0.isASCII && $0.isNumber }.count > 3 ? "No" : "Yes"
}
