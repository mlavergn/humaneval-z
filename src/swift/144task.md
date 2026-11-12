## task_id

```
Swift/144
```

## prompt

```swift
import Foundation

/// Your task is to implement a function that will Simplify the expression
/// x * n. The function returns true if x * n evaluates to a whole number and false
/// otherwise. Both x and n, are string representation of a fraction, and have the following format,
/// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
///
/// You can assume that x, and n are valid fractions, and do not have zero as denominator.
///
/// simplify("1/5", n: "5/1") = true
/// simplify("1/6", n: "2/1") = false
/// simplify("7/10", n: "10/2") = false
func simplify(_ x: String, n: String) -> Bool {
```

## declaration

```swift
func simplify(_ x: String, n: String) -> Bool {
```

## example_test

```swift
precondition(simplify("1/5", n: "5/1"))
precondition(!simplify("1/6", n: "2/1"))
precondition(!simplify("7/10", n: "10/2"))
```
