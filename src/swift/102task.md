## task_id

```
Swift/102
```

## prompt

```swift
import Foundation

/// This function takes two positive numbers x and y and returns the
/// biggest even integer number that is in the range [x, y] inclusive. If
/// there's no such number, then the function should return -1.
///
/// For example:
/// chooseNum(12, 15) = 14
/// chooseNum(13, 12) = -1
func chooseNum(_ x: Int, _ y: Int) -> Int {
```

## declaration

```swift
func chooseNum(_ x: Int, _ y: Int) -> Int {
```

## example_test

```swift
precondition(chooseNum(12, 15) == 14)
precondition(chooseNum(13, 12) == -1)
```
