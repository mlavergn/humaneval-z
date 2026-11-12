func findZero(_ xs: [Int]) -> Double {
    var begin = -1.0, end = 1.0
    while poly(xs, x: begin) * poly(xs, x: end) > 0 {
        begin *= 2
        end *= 2
    }
    while end - begin > 1e-10 {
        let center = (begin + end) / 2
        if poly(xs, x: center) * poly(xs, x: begin) > 0 {
            begin = center
        } else {
            end = center
        }
    }
    return begin
}
