func wordsInSentence(_ sentence: String) -> String {
    func isPrime(_ n: Int) -> Bool {
        if n < 2 { return false }
        var i = 2
        while i * i <= n {
            if n % i == 0 { return false }
            i += 1
        }
        return true
    }
    return sentence.split(whereSeparator: { $0.isWhitespace }).filter { isPrime($0.count) }.joined(separator: " ")
}
