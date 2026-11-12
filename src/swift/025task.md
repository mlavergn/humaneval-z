## task_id

```
Swift/25
```

## prompt

```swift
import Foundation

/// Return list of prime factors of given integer in the order from smallest to largest.
/// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
/// Input number should be equal to the product of all factors
/// >>> factorize(8)
/// [2, 2, 2]
/// >>> factorize(25)
/// [5, 5]
/// >>> factorize(70)
/// [2, 5, 7]
func factorize(_ n: Int) -> [Int] {
```

## declaration

```swift
func factorize(_ n: Int) -> [Int] {
```

## example_test

```swift
precondition(factorize(8) == [2, 2, 2])
precondition(factorize(25) == [5, 5])
precondition(factorize(70) == [2, 5, 7])
```
