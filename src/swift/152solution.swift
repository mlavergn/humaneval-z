func compare(_ game: [Int], _ guess: [Int]) -> [Int] {
    return zip(game, guess).map { abs($0 - $1) }
}
