func intToMiniRoman(_ number: Int) -> String {
    let numerals = [(1000, "m"), (900, "cm"), (500, "d"), (400, "cd"), (100, "c"), (90, "xc"),
                    (50, "l"), (40, "xl"), (10, "x"), (9, "ix"), (5, "v"), (4, "iv"), (1, "i")]
    var rest = number
    var result = ""
    for (value, symbol) in numerals {
        while rest >= value {
            result += symbol
            rest -= value
        }
    }
    return result
}
