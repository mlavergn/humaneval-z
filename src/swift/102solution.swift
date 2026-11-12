func chooseNum(_ x: Int, _ y: Int) -> Int {
    if x > y { return -1 }
    if y % 2 == 0 { return y }
    if x == y { return -1 }
    return y - 1
}
