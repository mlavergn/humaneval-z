## task_id

```
Swift/77
```

## prompt

```swift
import Foundation

/// Write a function that takes an integer a and returns true
/// if this ingeger is a cube of some integer number.
/// Note: you may assume the input is always valid.
/// Examples:
/// iscube(1) ==> true
/// iscube(2) ==> false
/// iscube(-1) ==> true
/// iscube(64) ==> true
/// iscube(0) ==> true
/// iscube(180) ==> false
func iscube(_ a: Int) -> Bool {
```

## declaration

```swift
func iscube(_ a: Int) -> Bool {
```

## example_test

```swift
precondition(iscube(1))
precondition(!iscube(2))
precondition(iscube(-1))
precondition(iscube(64))
precondition(!iscube(180))
precondition(iscube(0))
```
