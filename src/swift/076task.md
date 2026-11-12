## task_id

```
Swift/76
```

## prompt

```swift
import Foundation

/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// isSimplePower(1, n: 4) => true
/// isSimplePower(2, n: 2) => true
/// isSimplePower(8, n: 2) => true
/// isSimplePower(3, n: 2) => false
/// isSimplePower(3, n: 1) => false
/// isSimplePower(5, n: 3) => false
func isSimplePower(_ x: Int, n: Int) -> Bool {
```

## declaration

```swift
func isSimplePower(_ x: Int, n: Int) -> Bool {
```

## example_test

```swift
precondition(isSimplePower(1, n: 4))
precondition(isSimplePower(2, n: 2))
precondition(isSimplePower(8, n: 2))
precondition(!isSimplePower(3, n: 2))
precondition(!isSimplePower(3, n: 1))
precondition(!isSimplePower(5, n: 3))
```
