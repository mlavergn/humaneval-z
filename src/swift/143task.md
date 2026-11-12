## task_id

```
Swift/143
```

## prompt

```swift
import Foundation

/// You are given a string representing a sentence,
/// the sentence contains some words separated by a space,
/// and you have to return a string that contains the words from the original sentence,
/// whose lengths are prime numbers,
/// the order of the words in the new string should be the same as the original one.
///
/// Example 1:
/// Input: sentence = "This is a test"
/// Output: "is"
///
/// Example 2:
/// Input: sentence = "lets go for swimming"
/// Output: "go for"
///
/// Constraints:
/// * 1 <= len(sentence) <= 100
/// * sentence contains only letters
func wordsInSentence(_ sentence: String) -> String {
```

## declaration

```swift
func wordsInSentence(_ sentence: String) -> String {
```

## example_test

```swift
precondition(wordsInSentence("This is a test") == "is")
precondition(wordsInSentence("lets go for swimming") == "go for")
```
