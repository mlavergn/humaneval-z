## task_id

```
Swift/132
```

## prompt

```swift
import Foundation

/// Create a function that takes a string as input which contains only square brackets.
/// The function should return true if and only if there is a valid subsequence of brackets
/// where at least one bracket in the subsequence is nested.
///
/// isNested("[[]]") ➞ true
/// isNested("[]]]]]]][[[[[]") ➞ false
/// isNested("[][]") ➞ false
/// isNested("[]") ➞ false
/// isNested("[[][]]") ➞ true
/// isNested("[[]][[") ➞ true
func isNested(_ string: String) -> Bool {
```

## declaration

```swift
func isNested(_ string: String) -> Bool {
```

## example_test

```swift
precondition(isNested("[[]]"))
precondition(!isNested("[]]]]]]][[[[[]"))
precondition(!isNested("[][]"))
precondition(!isNested("'[]'"))
precondition(isNested("[[]][["))
precondition(isNested("[[][]]"))
```
