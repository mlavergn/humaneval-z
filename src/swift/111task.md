## task_id

```
Swift/111
```

## prompt

```swift
import Foundation

/// Given a string representing a space separated lowercase letters, return a dictionary
/// of the letter with the most repetition and containing the corresponding count.
/// If several letters have the same occurrence, return all of them.
///
/// Example:
/// histogram("a b c") == ["a": 1, "b": 1, "c": 1]
/// histogram("a b b a") == ["a": 2, "b": 2]
/// histogram("a b c a b") == ["a": 2, "b": 2]
/// histogram("b b b b a") == ["b": 4]
/// histogram("") == [:]
/// Returns the most repeated letters with their count.
func histogram(_ test: String) -> [Character: Int] {
```

## declaration

```swift
func histogram(_ test: String) -> [Character: Int] {
```

## example_test

```swift
precondition(histogram("a b b a") == ["a": 2, "b": 2])
precondition(histogram("a b c a b") == ["a": 2, "b": 2])
precondition(histogram("a b c") == ["a": 1, "b": 1, "c": 1])
precondition(histogram("b b b b a") == ["b": 4])
precondition(histogram("") == [:])
```
