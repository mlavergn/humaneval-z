func monotonic(_ l: [Int]) -> Bool {
    let pairs = zip(l, l.dropFirst())
    return pairs.allSatisfy { $0 <= $1 } || pairs.allSatisfy { $0 >= $1 }
}
