## task_id

```
Swift/161
```

## prompt

```swift
import Foundation

/// You are given a string s.
/// if s[i] is a letter, reverse its case from lower to upper or vise versa,
/// otherwise keep it as it is.
/// If the string contains no letters, reverse the string.
/// The function should return the resulted string.
/// Examples
/// solve("1234") = "4321"
/// solve("ab") = "AB"
/// solve("#a@C") = "#A@c"
func solve(_ s: String) -> String {
```

## declaration

```swift
func solve(_ s: String) -> String {
```

## example_test

```swift
precondition(solve("1234") == "4321")
precondition(solve("ab") == "AB")
precondition(solve("#a@C") == "#A@c")
```
