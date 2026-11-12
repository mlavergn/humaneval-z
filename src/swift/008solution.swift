func sumProduct(_ numbers: [Int]) -> (Int, Int) {
    return (numbers.reduce(0, +), numbers.reduce(1, *))
}
