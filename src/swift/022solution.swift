func filterIntegers(_ values: [Value]) -> [Int] {
    return values.compactMap { value in
        if case .int(let i) = value { return i }
        return nil
    }
}
