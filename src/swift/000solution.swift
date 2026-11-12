func hasCloseElements(_ numbers: [Double], threshold: Double) -> Bool {
    for i in numbers.indices {
        for j in numbers.indices where j > i {
            if abs(numbers[i] - numbers[j]) < threshold { return true }
        }
    }
    return false
}
