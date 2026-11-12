## task_id

```
Swift/54
```

## prompt

```swift
import Foundation

/// Check if two words have the same characters.
/// >>> sameChars("eabcdzzzz", "dddzzzzzzzddeddabc")
/// true
/// >>> sameChars("abcd", "dddddddabc")
/// true
/// >>> sameChars("dddddddabc", "abcd")
/// true
/// >>> sameChars("eabcd", "dddddddabc")
/// false
/// >>> sameChars("abcd", "dddddddabce")
/// false
/// >>> sameChars("eabcdzzzz", "dddzzzzzzzddddabc")
/// false
func sameChars(_ s0: String, _ s1: String) -> Bool {
```

## declaration

```swift
func sameChars(_ s0: String, _ s1: String) -> Bool {
```

## example_test

```swift
precondition(sameChars("eabcdzzzz", "dddzzzzzzzddeddabc"))
precondition(sameChars("abcd", "dddddddabc"))
precondition(sameChars("dddddddabc", "abcd"))
precondition(!sameChars("eabcd", "dddddddabc"))
precondition(!sameChars("abcd", "dddddddabcf"))
precondition(!sameChars("eabcdzzzz", "dddzzzzzzzddddabc"))
```
