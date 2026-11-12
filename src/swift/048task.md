## task_id

```
Swift/48
```

## prompt

```swift
import Foundation

/// Checks if given string is a palindrome
/// >>> isPalindrome("")
/// true
/// >>> isPalindrome("aba")
/// true
/// >>> isPalindrome("aaaaa")
/// true
/// >>> isPalindrome("zbcd")
/// false
func isPalindrome(_ text: String) -> Bool {
```

## declaration

```swift
func isPalindrome(_ text: String) -> Bool {
```

## example_test

```swift
precondition(isPalindrome(""))
precondition(isPalindrome("aba"))
precondition(isPalindrome("aaaaa"))
precondition(!isPalindrome("zbcd"))
```
