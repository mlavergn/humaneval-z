func largestSmallestIntegers(_ lst: [Int]) -> (Int?, Int?) {
    return (lst.filter { $0 < 0 }.max(), lst.filter { $0 > 0 }.min())
}
