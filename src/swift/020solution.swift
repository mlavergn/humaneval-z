func findClosestElements(_ numbers: [Double]) -> (Double, Double) {
    var distance = Double.infinity
    var closestPair = (0.0, 0.0)
    for i in numbers.indices {
        for j in numbers.indices where i != j {
            let newDistance = abs(numbers[i] - numbers[j])
            if newDistance < distance {
                distance = newDistance
                closestPair = (min(numbers[i], numbers[j]), max(numbers[i], numbers[j]))
            }
        }
    }
    return closestPair
}
