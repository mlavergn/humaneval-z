## task_id

```
Swift/91
```

## prompt

```swift
import Foundation

/// You'll be given a string of words, and your task is to count the number
/// of boredoms. A boredom is a sentence that starts with the word "I".
/// Sentences are delimited by '.', '?' or '!'.
///
/// For example:
/// >>> isBored("Hello world")
/// 0
/// >>> isBored("The sky is blue. The sun is shining. I love this weather")
/// 1
func isBored(_ s: String) -> Int {
```

## declaration

```swift
func isBored(_ s: String) -> Int {
```

## example_test

```swift
precondition(isBored("Hello world") == 0)
precondition(isBored("The sky is blue. The sun is shining. I love this weather") == 1)
```
