## task_id

```
Swift/66
```

## prompt

```swift
import Foundation

/// Task
/// Write a function that takes a string as input and returns the sum of the upper characters only'
/// ASCII codes.
///
/// Examples:
/// digitsum("") => 0
/// digitsum("abAB") => 131
/// digitsum("abcCd") => 67
/// digitsum("helloE") => 69
/// digitsum("woArBld") => 131
/// digitsum("aAaaaXa") => 153
func digitsum(_ s: String) -> Int {
```

## declaration

```swift
func digitsum(_ s: String) -> Int {
```

## example_test

```swift
precondition(digitsum("") == 0)
precondition(digitsum("abAB") == 131)
precondition(digitsum("abcCd") == 67)
precondition(digitsum("helloE") == 69)
precondition(digitsum("woArBld") == 131)
precondition(digitsum("aAaaaXa") == 153)
```
