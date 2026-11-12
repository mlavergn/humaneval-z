## task_id

```
Swift/51
```

## prompt

```swift
import Foundation

/// removeVowels is a function that takes string and returns string without vowels.
/// >>> removeVowels("")
/// ""
/// >>> removeVowels("abcdef\nghijklm")
/// "bcdf\nghjklm"
/// >>> removeVowels("abcdef")
/// "bcdf"
/// >>> removeVowels("aaaaa")
/// ""
/// >>> removeVowels("aaBAA")
/// "B"
/// >>> removeVowels("zbcd")
/// "zbcd"
func removeVowels(_ text: String) -> String {
```

## declaration

```swift
func removeVowels(_ text: String) -> String {
```

## example_test

```swift
precondition(removeVowels("") == "")
precondition(removeVowels("abcdef\nghijklm") == "bcdf\nghjklm")
precondition(removeVowels("abcdef") == "bcdf")
precondition(removeVowels("aaaaa") == "")
precondition(removeVowels("aaBAA") == "B")
precondition(removeVowels("zbcd") == "zbcd")
```
