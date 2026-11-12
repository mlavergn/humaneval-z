## task_id

```
Swift/32
```

## prompt

```swift
import Foundation

/// Evaluates polynomial with coefficients xs at point x.
/// return xs[0] + xs[1] * x + xs[1] * x^2 + .... xs[n] * x^n
func poly(_ xs: [Int], x: Double) -> Double {
    var sum = 0.0
    for (i, coeff) in xs.enumerated() {
        sum += Double(coeff) * pow(x, Double(i))
    }
    return sum
}

/// xs are coefficients of a polynomial.
/// findZero find x such that poly(x) = 0.
/// findZero returns only only zero point, even if there are many.
/// Moreover, findZero only takes list xs having even number of coefficients
/// and largest non zero coefficient as it guarantees
/// a solution.
/// >>> round(findZero([1, 2]), 2) # f(x) = 1 + 2x
/// -0.5
/// >>> round(findZero([-6, 11, -6, 1]), 2) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
/// 1.0
func findZero(_ xs: [Int]) -> Double {
```

## declaration

```swift
func findZero(_ xs: [Int]) -> Double {
```

## example_test

```swift
precondition(abs(findZero([1, 2]) + 0.5) < 1e-4)
precondition(abs(findZero([-6, 11, -6, 1]) - 1) < 1e-4)
```
