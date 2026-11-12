## task_id

```
Swift/28
```

## prompt

```swift
import Foundation

/// Concatenate list of strings into a single string
/// >>> concatenate([])
/// ""
/// >>> concatenate(["a", "b", "c"])
/// "abc"
func concatenate(_ strings: [String]) -> String {
```

## declaration

```swift
func concatenate(_ strings: [String]) -> String {
```

## example_test

```swift
precondition(concatenate([]) == "")
precondition(concatenate(["a", "b", "c"]) == "abc")
```
