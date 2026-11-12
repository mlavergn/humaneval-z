func isNested(_ string: String) -> Bool {
    let chars = Array(string)
    let opening = chars.indices.filter { chars[$0] == "[" }
    let closing = Array(chars.indices.filter { chars[$0] != "[" }.reversed())
    var cnt = 0, i = 0
    for idx in opening where i < closing.count && idx < closing[i] {
        cnt += 1
        i += 1
    }
    return cnt >= 2
}
