## task_id

```
Swift/29
```

## prompt

```swift
import Foundation

/// Filter an input list of strings only for ones that start with a given prefix.
/// >>> filterByPrefix([], prefix: "a")
/// []
/// >>> filterByPrefix(["abc", "bcd", "cde", "array"], prefix: "a")
/// ["abc", "array"]
func filterByPrefix(_ strings: [String], prefix: String) -> [String] {
```

## declaration

```swift
func filterByPrefix(_ strings: [String], prefix: String) -> [String] {
```

## example_test

```swift
precondition(filterByPrefix([], prefix: "a") == [])
precondition(filterByPrefix(["abc", "bcd", "cde", "array"], prefix: "a") == ["abc", "array"])
```
