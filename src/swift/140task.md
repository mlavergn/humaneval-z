## task_id

```
Swift/140
```

## prompt

```swift
import Foundation

/// Given a string text, replace all spaces in it with underscores,
/// and if a string has more than 2 consecutive spaces,
/// then replace all consecutive spaces with -
///
/// fixSpaces("Example") == "Example"
/// fixSpaces("Example 1") == "Example_1"
/// fixSpaces(" Example 2") == "_Example_2"
/// fixSpaces(" Example   3") == "_Example-3"
func fixSpaces(_ text: String) -> String {
```

## declaration

```swift
func fixSpaces(_ text: String) -> String {
```

## example_test

```swift
precondition(fixSpaces("Example") == "Example")
precondition(fixSpaces("Example 1") == "Example_1")
precondition(fixSpaces(" Example 2") == "_Example_2")
precondition(fixSpaces(" Example   3") == "_Example-3")
```
