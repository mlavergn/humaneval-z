## task_id

```
Swift/125
```

## prompt

```swift
import Foundation

/// Either the list of words or a count.
enum SplitResult: Equatable {
    case words([String])
    case count(Int)
}

/// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
/// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
/// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
/// Examples
/// splitWords("Hello world!") ➞ ["Hello", "world!"]
/// splitWords("Hello,world!") ➞ ["Hello", "world!"]
/// splitWords("abcdef") == 3
func splitWords(_ txt: String) -> SplitResult {
```

## declaration

```swift
func splitWords(_ txt: String) -> SplitResult {
```

## example_test

```swift
precondition(splitWords("Hello world!") == .words(["Hello", "world!"]))
precondition(splitWords("Hello,world!") == .words(["Hello", "world!"]))
precondition(splitWords("abcdef") == .count(3))
```
