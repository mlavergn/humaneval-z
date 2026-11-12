## task_id

```
Swift/93
```

## prompt

```swift
import Foundation

/// Write a function that takes a message, and Encodes in such a
/// way that it swaps case of all letters, replaces all vowels in
/// the message with the letter that appears 2 places ahead of that
/// vowel in the english alphabet.
/// Assume only letters.
///
/// Examples:
/// >>> encode("test")
/// "TGST"
/// >>> encode("This is a message")
/// "tHKS KS C MGSSCGG"
func encode(_ message: String) -> String {
```

## declaration

```swift
func encode(_ message: String) -> String {
```

## example_test

```swift
precondition(encode("test") == "TGST")
precondition(encode("This is a message") == "tHKS KS C MGSSCGG")
```
