## task_id

```
Swift/64
```

## prompt

```swift
import Foundation

/// Write a function vowelsCount which takes a string representing
/// a word as input and returns the number of vowels in the string.
/// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
/// vowel, but only when it is at the end of the given word.
///
/// Example:
/// >>> vowelsCount("abcde")
/// 2
/// >>> vowelsCount("ACEDY")
/// 3
func vowelsCount(_ s: String) -> Int {
```

## declaration

```swift
func vowelsCount(_ s: String) -> Int {
```

## example_test

```swift
precondition(vowelsCount("abcde") == 2)
precondition(vowelsCount("ACEDY") == 3)
```
