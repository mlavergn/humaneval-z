// decodeShift(encodeShift(s)) == s for random lowercase strings (fixed seed).
var rng = SplitMix64(seed: 42)
let letters = Array("abcdefghijklmnopqrstuvwxyz")
for _ in 0..<100 {
    let s = String((0..<Int.random(in: 10...20, using: &rng)).map { _ in letters.randomElement(using: &rng)! })
    precondition(decodeShift(encodeShift(s)) == s)
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
