## task_id

```
Swift/138
```

## prompt

```swift
import Foundation

/// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
/// Example
/// isEqualToSumEven(4) == false
/// isEqualToSumEven(6) == false
/// isEqualToSumEven(8) == true
func isEqualToSumEven(_ n: Int) -> Bool {
```

## declaration

```swift
func isEqualToSumEven(_ n: Int) -> Bool {
```

## example_test

```swift
precondition(!isEqualToSumEven(4))
precondition(!isEqualToSumEven(6))
precondition(isEqualToSumEven(8))
```
