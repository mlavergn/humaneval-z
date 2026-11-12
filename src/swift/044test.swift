precondition(changeBase(8, base: 3) == "22")
precondition(changeBase(9, base: 3) == "100")
precondition(changeBase(234, base: 2) == "11101010")
precondition(changeBase(16, base: 2) == "10000")
precondition(changeBase(8, base: 2) == "1000")
precondition(changeBase(7, base: 2) == "111")
for i in 2..<8 {
    precondition(changeBase(i, base: i + 1) == String(i))
}
