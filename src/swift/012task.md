## task_id

```
Swift/12
```

## prompt

```swift
import Foundation

/// Out of list of strings, return the Longest one. Return the first one in case of multiple
/// strings of the same length. Return nil in case the input list is empty.
/// >>> longest([])
/// nil
/// >>> longest(["a", "b", "c"])
/// "a"
/// >>> longest(["a", "bb", "ccc"])
/// "ccc"
func longest(_ strings: [String]) -> String? {
```

## declaration

```swift
func longest(_ strings: [String]) -> String? {
```

## example_test

```swift
precondition(longest([]) == nil)
precondition(longest(["a", "b", "c"]) == "a")
precondition(longest(["a", "bb", "ccc"]) == "ccc")
```
