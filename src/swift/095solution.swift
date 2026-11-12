func checkDictCase(_ dict: [String: String]) -> Bool {
    if dict.isEmpty { return false }
    let keys = dict.keys
    let allLetters = keys.allSatisfy { key in key.allSatisfy { $0.isASCII && $0.isLetter } }
    return allLetters && (keys.allSatisfy { $0 == $0.lowercased() } || keys.allSatisfy { $0 == $0.uppercased() })
}
