func eat(number: Int, need: Int, remaining: Int) -> (Int, Int) {
    if need <= remaining { return (number + need, remaining - need) }
    return (number + remaining, 0)
}
