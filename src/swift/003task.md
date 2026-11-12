## task_id

```
Swift/3
```

## prompt

```swift
import Foundation

/// You're given a list of deposit and withdrawal operations on a bank account that starts with
/// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
/// at that point function should return true. Otherwise it should return false.
/// >>> belowZero(operations: [1, 2, 3])
/// false
/// >>> belowZero(operations: [1, 2, -4, 5])
/// true
func belowZero(operations: [Int]) -> Bool {
```

## declaration

```swift
func belowZero(operations: [Int]) -> Bool {
```

## example_test

```swift
precondition(!belowZero(operations: [1, 2, 3]))
precondition(belowZero(operations: [1, 2, -4, 5]))
```
