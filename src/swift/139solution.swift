func specialFactorial(_ n: Int) -> Int {
    var factI = 1, specialFact = 1
    for i in stride(from: 1, through: n, by: 1) {
        factI *= i
        specialFact *= factI
    }
    return specialFact
}
