## task_id

```
Swift/134
```

## prompt

```swift
import Foundation

/// Create a function that returns true if the last character
/// of a given string is an alphabetical character and is not
/// a part of a word, and false otherwise.
/// Note: "word" is a group of characters separated by space.
///
/// Examples:
/// checkIfLastCharIsALetter("apple pie") ➞ false
/// checkIfLastCharIsALetter("apple pi e") ➞ true
/// checkIfLastCharIsALetter("apple pi e ") ➞ false
/// checkIfLastCharIsALetter("") ➞ false
func checkIfLastCharIsALetter(_ txt: String) -> Bool {
```

## declaration

```swift
func checkIfLastCharIsALetter(_ txt: String) -> Bool {
```

## example_test

```swift
precondition(checkIfLastCharIsALetter("apple pi e"))
precondition(!checkIfLastCharIsALetter(""))
precondition(!checkIfLastCharIsALetter("apple pie"))
precondition(!checkIfLastCharIsALetter("apple pi e "))
```
