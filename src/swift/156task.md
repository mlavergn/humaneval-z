## task_id

```
Swift/156
```

## prompt

```swift
import Foundation

/// Given a positive integer, obtain its roman numeral equivalent as a string,
/// and return it in lowercase.
/// Restrictions: 1 <= num <= 1000
///
/// Examples:
/// >>> intToMiniRoman(19) == "xix"
/// >>> intToMiniRoman(152) == "clii"
/// >>> intToMiniRoman(426) == "cdxxvi"
func intToMiniRoman(_ number: Int) -> String {
```

## declaration

```swift
func intToMiniRoman(_ number: Int) -> String {
```

## example_test

```swift
precondition(intToMiniRoman(19) == "xix")
precondition(intToMiniRoman(152) == "clii")
precondition(intToMiniRoman(426) == "cdxxvi")
```
