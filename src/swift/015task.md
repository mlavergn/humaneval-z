## task_id

```
Swift/15
```

## prompt

```swift
import Foundation

/// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
/// >>> stringSequence(0)
/// "0"
/// >>> stringSequence(5)
/// "0 1 2 3 4 5"
func stringSequence(_ n: Int) -> String {
```

## declaration

```swift
func stringSequence(_ n: Int) -> String {
```

## example_test

```swift
precondition(stringSequence(0) == "0")
precondition(stringSequence(5) == "0 1 2 3 4 5")
```
