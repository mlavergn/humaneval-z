func removeDuplicates(_ numbers: [Int]) -> [Int] {
    var counts: [Int: Int] = [:]
    for n in numbers { counts[n, default: 0] += 1 }
    return numbers.filter { counts[$0] == 1 }
}
