func hexKey(_ num: String) -> Int {
    return num.filter { "2357BD".contains($0) }.count
}
