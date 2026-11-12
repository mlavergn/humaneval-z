## task_id

```
Swift/49
```

## prompt

```swift
import Foundation

/// Return 2^n modulo p (be aware of numerics).
/// >>> modp(3, p: 5)
/// 3
/// >>> modp(1101, p: 101)
/// 2
/// >>> modp(0, p: 101)
/// 1
/// >>> modp(3, p: 11)
/// 8
/// >>> modp(100, p: 101)
/// 1
func modp(_ n: Int, p: Int) -> Int {
```

## declaration

```swift
func modp(_ n: Int, p: Int) -> Int {
```

## example_test

```swift
precondition(modp(3, p: 5) == 3)
precondition(modp(1101, p: 101) == 2)
precondition(modp(0, p: 101) == 1)
precondition(modp(3, p: 11) == 8)
precondition(modp(100, p: 101) == 1)
```
