func stringToMd5(_ text: String) -> String? {
    if text.isEmpty { return nil }
    return md5(Array(text.utf8)).map { String(format: "%02x", $0) }.joined()
}

/// MD5 (RFC 1321); Foundation on Linux has no built-in digest.
func md5(_ message: [UInt8]) -> [UInt8] {
    let s: [UInt32] = [7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
                       5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
                       4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
                       6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21]
    let k: [UInt32] = (0..<64).map { UInt32(truncatingIfNeeded: Int64(abs(sin(Double($0 + 1))) * 4294967296.0)) }
    var a0: UInt32 = 0x67452301, b0: UInt32 = 0xefcdab89, c0: UInt32 = 0x98badcfe, d0: UInt32 = 0x10325476
    var data = message
    data.append(0x80)
    while data.count % 64 != 56 { data.append(0) }
    let bitLength = UInt64(message.count) * 8
    data += (0..<8).map { UInt8(truncatingIfNeeded: bitLength >> (8 * UInt64($0))) }
    for chunk in stride(from: 0, to: data.count, by: 64) {
        let m: [UInt32] = (0..<16).map { i in
            (0..<4).reduce(UInt32(0)) { $0 | UInt32(data[chunk + 4 * i + $1]) << (8 * UInt32($1)) }
        }
        var (a, b, c, d) = (a0, b0, c0, d0)
        for i in 0..<64 {
            var f: UInt32
            let g: Int
            switch i {
            case 0..<16: f = (b & c) | (~b & d); g = i
            case 16..<32: f = (d & b) | (~d & c); g = (5 * i + 1) % 16
            case 32..<48: f = b ^ c ^ d; g = (3 * i + 5) % 16
            default: f = c ^ (b | ~d); g = (7 * i) % 16
            }
            f = f &+ a &+ k[i] &+ m[g]
            (a, d, c) = (d, c, b)
            b = b &+ ((f << s[i]) | (f >> (32 - s[i])))
        }
        a0 = a0 &+ a; b0 = b0 &+ b; c0 = c0 &+ c; d0 = d0 &+ d
    }
    return [a0, b0, c0, d0].flatMap { w in (0..<4).map { UInt8(truncatingIfNeeded: w >> (8 * UInt32($0))) } }
}
