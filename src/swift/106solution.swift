func f(_ n: Int) -> [Int] {
    return (1...max(n, 1)).prefix(max(n, 0)).map { i in
        i % 2 == 0 ? (1...i).reduce(1, *) : i * (i + 1) / 2
    }
}
