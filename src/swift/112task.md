## task_id

```
Swift/112
```

## prompt

```swift
import Foundation

/// Task
/// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
/// then check if the result string is palindrome.
/// A string is called palindrome if it reads the same backward as forward.
/// You should return a tuple containing the result string and true/false for the check.
/// Example
/// For s = "abcde", c = "ae", the result should be ('bcd',false)
/// For s = "abcdef", c = "b"  the result should be ('acdef',false)
/// For s = "abcdedcba", c = "ab", the result should be ('cdedc',true)
func reverseDelete(_ s: String, c: String) -> (String, Bool) {
```

## declaration

```swift
func reverseDelete(_ s: String, c: String) -> (String, Bool) {
```

## example_test

```swift
precondition(reverseDelete("abcde", c: "ae") == ("bcd", false))
precondition(reverseDelete("abcdef", c: "b") == ("acdef", false))
precondition(reverseDelete("abcdedcba", c: "ab") == ("cdedc", true))
```
