precondition(add(x: 0, y: 1) == 1)
precondition(add(x: 1, y: 0) == 1)
precondition(add(x: 2, y: 3) == 5)
precondition(add(x: 5, y: 7) == 12)
precondition(add(x: 7, y: 5) == 12)
var rng = SplitMix64(seed: 42)
for _ in 0..<100 {
    let x = Int.random(in: 0..<1000, using: &rng), y = Int.random(in: 0..<1000, using: &rng)
    precondition(add(x: x, y: y) == x + y)
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
