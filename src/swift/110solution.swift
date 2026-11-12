func exchange(_ lst1: [Int], _ lst2: [Int]) -> String {
    let odd = lst1.filter { $0 % 2 != 0 }.count
    let even = lst2.filter { $0 % 2 == 0 }.count
    return even >= odd ? "YES" : "NO"
}
