func getMaxTriples(_ n: Int) -> Int {
    let a = (0..<max(n, 0)).map { i in (i + 1) * (i + 1) - (i + 1) + 1 }
    var ans = 0
    for i in a.indices {
        for j in a.indices where j > i {
            for k in a.indices where k > j && (a[i] + a[j] + a[k]) % 3 == 0 {
                ans += 1
            }
        }
    }
    return ans
}
