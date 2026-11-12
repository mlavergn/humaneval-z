## task_id

```
Swift/80
```

## prompt

```swift
import Foundation

/// You are given a string s.
/// Your task is to check if the string is happy or not.
/// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
/// For example:
/// isHappy(a) => false
/// isHappy(aa) => false
/// isHappy(abcd) => true
/// isHappy(aabb) => false
/// isHappy(adb) => true
/// isHappy(xyy) => false
func isHappy(_ s: String) -> Bool {
```

## declaration

```swift
func isHappy(_ s: String) -> Bool {
```

## example_test

```swift
precondition(!isHappy("a"))
precondition(!isHappy("aa"))
precondition(isHappy("abcd"))
precondition(!isHappy("aabb"))
precondition(isHappy("adb"))
precondition(!isHappy("xyy"))
```
