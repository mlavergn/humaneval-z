func checkIfLastCharIsALetter(_ txt: String) -> Bool {
    let lastWord = txt.split(separator: " ", omittingEmptySubsequences: false).last ?? ""
    return lastWord.count == 1 && lastWord.first!.isLetter
}
