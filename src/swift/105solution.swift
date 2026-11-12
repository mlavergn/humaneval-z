func byLength(_ arr: [Int]) -> [String] {
    let names = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    return arr.filter { (1...9).contains($0) }.sorted(by: >).map { names[$0 - 1] }
}
