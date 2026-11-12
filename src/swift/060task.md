## task_id

```
Swift/60
```

## prompt

```swift
import Foundation

/// sumToN is a function that sums numbers from 1 to n.
/// >>> sumToN(30)
/// 465
/// >>> sumToN(100)
/// 5050
/// >>> sumToN(5)
/// 15
/// >>> sumToN(10)
/// 55
/// >>> sumToN(1)
/// 1
func sumToN(_ n: Int) -> Int {
```

## declaration

```swift
func sumToN(_ n: Int) -> Int {
```

## example_test

```swift
precondition(sumToN(1) == 1)
precondition(sumToN(5) == 15)
precondition(sumToN(10) == 55)
precondition(sumToN(30) == 465)
precondition(sumToN(100) == 5050)
```
