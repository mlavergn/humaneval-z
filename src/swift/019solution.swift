func sortNumbers(_ numbers: String) -> String {
    let names = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    let values = numbers.split(separator: " ").compactMap { names.firstIndex(of: String($0)) }
    return values.sorted().map { names[$0] }.joined(separator: " ")
}
