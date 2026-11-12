func fizzBuzz(_ n: Int) -> Int {
    var ans = 0
    for i in 0..<max(n, 0) where i % 11 == 0 || i % 13 == 0 {
        ans += String(i).filter { $0 == "7" }.count
    }
    return ans
}
