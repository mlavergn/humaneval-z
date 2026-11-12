// Random polynomials with an even number of non-zero coefficients (fixed seed).
var rng = SplitMix64(seed: 42)
for _ in 0..<100 {
    let ncoeff = 2 * Int.random(in: 1..<4, using: &rng)
    var coeffs: [Int] = []
    for _ in 0..<ncoeff {
        let coeff = Int.random(in: -10..<10, using: &rng)
        coeffs.append(coeff == 0 ? 1 : coeff)
    }
    let solution = findZero(coeffs)
    precondition(abs(poly(coeffs, x: solution)) < 1e-4)
}

struct SplitMix64: RandomNumberGenerator {
    var state: UInt64
    init(seed: UInt64) { state = seed }
    mutating func next() -> UInt64 {
        state &+= 0x9E37_79B9_7F4A_7C15
        var z = state
        z = (z ^ (z >> 30)) &* 0xBF58_476D_1CE4_E5B9
        z = (z ^ (z >> 27)) &* 0x94D0_49BB_1331_11EB
        return z ^ (z >> 31)
    }
}
