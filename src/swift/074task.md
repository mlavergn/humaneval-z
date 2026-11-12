## task_id

```
Swift/74
```

## prompt

```swift
import Foundation

/// Write a function that accepts two lists of strings and returns the list that has
/// total number of chars in the all strings of the list less than the other list.
///
/// if the two lists have the same number of chars, return the first list.
///
/// Examples
/// totalMatch([], []) ➞ []
/// totalMatch(["hi", "admin"], ["hI", "Hi"]) ➞ ["hI", "Hi"]
/// totalMatch(["hi", "admin"], ["hi", "hi", "admin", "project"]) ➞ ["hi", "admin"]
/// totalMatch(["hi", "admin"], ["hI", "hi", "hi"]) ➞ ["hI", "hi", "hi"]
/// totalMatch(["4"], ["1", "2", "3", "4", "5"]) ➞ ["4"]
func totalMatch(_ lst1: [String], _ lst2: [String]) -> [String] {
```

## declaration

```swift
func totalMatch(_ lst1: [String], _ lst2: [String]) -> [String] {
```

## example_test

```swift
precondition(totalMatch([], []) == [])
precondition(totalMatch(["hi", "admin"], ["hi", "hi", "admin", "project"]) == ["hi", "admin"])
precondition(totalMatch(["4"], ["1", "2", "3", "4", "5"]) == ["4"])
precondition(totalMatch(["hi", "admin"], ["hI", "Hi"]) == ["hI", "Hi"])
precondition(totalMatch(["hi", "admin"], ["hI", "hi", "hi"]) == ["hI", "hi", "hi"])
```
