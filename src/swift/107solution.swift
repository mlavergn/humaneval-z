func evenOddPalindrome(_ n: Int) -> (Int, Int) {
    let palindromes = (1...max(n, 1)).prefix(max(n, 0)).filter { String($0) == String(String($0).reversed()) }
    let even = palindromes.filter { $0 % 2 == 0 }.count
    return (even, palindromes.count - even)
}
