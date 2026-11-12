## task_id

```
Swift/7
```

## prompt

```swift
import Foundation

/// Filter an input list of strings only for ones that contain given substring
/// >>> filterBySubstring([], substring: "a")
/// []
/// >>> filterBySubstring(["abc", "bacd", "cde", "array"], substring: "a")
/// ["abc", "bacd", "array"]
func filterBySubstring(_ strings: [String], substring: String) -> [String] {
```

## declaration

```swift
func filterBySubstring(_ strings: [String], substring: String) -> [String] {
```

## example_test

```swift
precondition(filterBySubstring([], substring: "a") == [])
precondition(filterBySubstring(["abc", "bacd", "cde", "array"], substring: "a") == ["abc", "bacd", "array"])
```
