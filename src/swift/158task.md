## task_id

```
Swift/158
```

## prompt

```swift
import Foundation

/// Write a function that accepts a list of strings.
/// The list contains different words. Return the word with maximum number
/// of unique characters. If multiple strings have maximum number of unique
/// characters, return the one which comes first in lexicographical order.
///
/// findMax(["name", "of", "string"]) == "string"
/// findMax(["name", "enam", "game"]) == "enam"
/// findMax(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
func findMax(_ words: [String]) -> String {
```

## declaration

```swift
func findMax(_ words: [String]) -> String {
```

## example_test

```swift
precondition(findMax(["name", "of", "string"]) == "string")
precondition(findMax(["name", "enam", "game"]) == "enam")
precondition(findMax(["aaaaaaa", "bb", "cc"]) == "aaaaaaa")
```
