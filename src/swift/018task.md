## task_id

```
Swift/18
```

## prompt

```swift
import Foundation

/// Find how many times a given substring can be found in the original string. Count overlaping cases.
/// >>> howManyTimes("", substring: "a")
/// 0
/// >>> howManyTimes("aaa", substring: "a")
/// 3
/// >>> howManyTimes("aaaa", substring: "aa")
/// 3
func howManyTimes(_ string: String, substring: String) -> Int {
```

## declaration

```swift
func howManyTimes(_ string: String, substring: String) -> Int {
```

## example_test

```swift
precondition(howManyTimes("", substring: "a") == 0)
precondition(howManyTimes("aaa", substring: "a") == 3)
precondition(howManyTimes("aaaa", substring: "aa") == 3)
```
