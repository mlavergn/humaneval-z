## task_id

```
Swift/86
```

## prompt

```swift
import Foundation

/// Write a function that takes a string and returns an ordered version of it.
/// Ordered version of string, is a string where all words (separated by space)
/// are replaced by a new word where all the characters arranged in
/// ascending order based on ascii value.
/// Note: You should keep the order of words and blank spaces in the sentence.
///
/// For example:
/// antiShuffle("Hi") returns "Hi"
/// antiShuffle("hello") returns "ehllo"
/// antiShuffle("Hello World!!!") returns "Hello !!!Wdlor"
func antiShuffle(_ s: String) -> String {
```

## declaration

```swift
func antiShuffle(_ s: String) -> String {
```

## example_test

```swift
precondition(antiShuffle("Hi") == "Hi")
precondition(antiShuffle("hello") == "ehllo")
precondition(antiShuffle("Hello World!!!") == "Hello !!!Wdlor")
```
