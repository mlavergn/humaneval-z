## task_id

```
Swift/62
```

## prompt

```swift
import Foundation

/// xs represent coefficients of a polynomial.
/// xs[0] + xs[1] * x + xs[2] * x^2 + ....
/// Return Derivative of this polynomial in the same form.
/// >>> derivative([3, 1, 2, 4, 5])
/// [1, 4, 12, 20]
/// >>> derivative([1, 2, 3])
/// [2, 6]
func derivative(_ xs: [Int]) -> [Int] {
```

## declaration

```swift
func derivative(_ xs: [Int]) -> [Int] {
```

## example_test

```swift
precondition(derivative([3, 1, 2, 4, 5]) == [1, 4, 12, 20])
precondition(derivative([1, 2, 3]) == [2, 6])
```
