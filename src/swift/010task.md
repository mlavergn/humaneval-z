## task_id

```
Swift/10
```

## prompt

```swift
import Foundation

/// Test if given string is a palindrome.
func isPalindrome(_ string: String) -> Bool {
    return string == String(string.reversed())
}

/// Find the shortest palindrome that begins with a supplied string.
/// Algorithm idea is simple:
/// - Find the longest postfix of supplied string that is a palindrome.
/// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
/// >>> makePalindrome("")
/// ""
/// >>> makePalindrome("cat")
/// "catac"
/// >>> makePalindrome("cata")
/// "catac"
func makePalindrome(_ string: String) -> String {
```

## declaration

```swift
func makePalindrome(_ string: String) -> String {
```

## example_test

```swift
precondition(makePalindrome("") == "")
precondition(makePalindrome("cat") == "catac")
precondition(makePalindrome("cata") == "catac")
```
