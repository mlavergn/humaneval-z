## task_id

```
Swift/118
```

## prompt

```swift
import Foundation

/// You are given a word. Your task is to find the closest vowel that stands between
/// two consonants from the right side of the word (case sensitive).
///
/// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
/// find any vowel met the above condition.
///
/// You may assume that the given string contains English letter only.
///
/// Example:
/// getClosestVowel("yogurt") ==> "u"
/// getClosestVowel("FULL") ==> "U"
/// getClosestVowel("quick") ==> ""
/// getClosestVowel("ab") ==> ""
func getClosestVowel(_ word: String) -> String {
```

## declaration

```swift
func getClosestVowel(_ word: String) -> String {
```

## example_test

```swift
precondition(getClosestVowel("yogurt") == "u")
precondition(getClosestVowel("FULL") == "U")
precondition(getClosestVowel("ab") == "")
precondition(getClosestVowel("quick") == "")
```
