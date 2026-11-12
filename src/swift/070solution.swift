func strangeSortList(_ lst: [Int]) -> [Int] {
    var sorted = lst.sorted()
    var result: [Int] = []
    var takeMin = true
    while !sorted.isEmpty {
        result.append(takeMin ? sorted.removeFirst() : sorted.removeLast())
        takeMin.toggle()
    }
    return result
}
