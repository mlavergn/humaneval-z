## task_id

```
Swift/117
```

## prompt

```swift
import Foundation

/// Given a string s and a natural number n, you have been tasked to implement
/// a function that returns a list of all words from string s that contain exactly
/// n consonants, in order these words appear in the string s.
/// If the string s is empty then the function should return an empty list.
/// Note: you may assume the input string contains only letters and spaces.
/// Examples:
/// selectWords("Mary had a little lamb", n: 4) ==> ["little"]
/// selectWords("Mary had a little lamb", n: 3) ==> ["Mary", "lamb"]
/// selectWords("simple white space", n: 2) ==> []
/// selectWords("Hello world", n: 4) ==> ["world"]
/// selectWords("Uncle sam", n: 3) ==> ["Uncle"]
func selectWords(_ s: String, n: Int) -> [String] {
```

## declaration

```swift
func selectWords(_ s: String, n: Int) -> [String] {
```

## example_test

```swift
precondition(selectWords("Mary had a little lamb", n: 4) == ["little"])
precondition(selectWords("Mary had a little lamb", n: 3) == ["Mary", "lamb"])
precondition(selectWords("simple white space", n: 2) == [])
precondition(selectWords("Hello world", n: 4) == ["world"])
precondition(selectWords("Uncle sam", n: 3) == ["Uncle"])
```
