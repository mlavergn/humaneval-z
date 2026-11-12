## task_id

```
Swift/155
```

## prompt

```swift
import Foundation

/// Given an integer. return a tuple that has the number of even and odd digits respectively.
///
/// Example:
/// evenOddCount(-12) ==> (1, 1)
/// evenOddCount(123) ==> (1, 2)
func evenOddCount(_ num: Int) -> (Int, Int) {
```

## declaration

```swift
func evenOddCount(_ num: Int) -> (Int, Int) {
```

## example_test

```swift
precondition(evenOddCount(-12) == (1, 1))
precondition(evenOddCount(123) == (1, 2))
```
