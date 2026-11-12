## task_id

```
Swift/101
```

## prompt

```swift
import Foundation

/// You will be given a string of words separated by commas or spaces. Your task is
/// to split the string into words and return an array of the words.
///
/// For example:
/// wordsString("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
/// wordsString("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
func wordsString(_ s: String) -> [String] {
```

## declaration

```swift
func wordsString(_ s: String) -> [String] {
```

## example_test

```swift
precondition(wordsString("Hi, my name is John") == ["Hi", "my", "name", "is", "John"])
precondition(wordsString("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"])
```
