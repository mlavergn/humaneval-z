## task_id

```
Swift/154
```

## prompt

```swift
import Foundation

/// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
/// cycpatternCheck("abcd", "abd") => false
/// cycpatternCheck("hello", "ell") => true
/// cycpatternCheck("whassup", "psus") => false
/// cycpatternCheck("abab", "baa") => true
/// cycpatternCheck("efef", "eeff") => false
/// cycpatternCheck("himenss", "simen") => true
func cycpatternCheck(_ a: String, _ b: String) -> Bool {
```

## declaration

```swift
func cycpatternCheck(_ a: String, _ b: String) -> Bool {
```

## example_test

```swift
precondition(!cycpatternCheck("abcd", "abd"))
precondition(cycpatternCheck("hello", "ell"))
precondition(!cycpatternCheck("whasup", "psus"))
precondition(cycpatternCheck("abab", "baa"))
precondition(!cycpatternCheck("efef", "eeff"))
precondition(cycpatternCheck("himenss", "simen"))
```
