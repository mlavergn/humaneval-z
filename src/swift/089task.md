## task_id

```
Swift/89
```

## prompt

```swift
import Foundation

/// Create a function Encrypt that takes a string as an argument and
/// returns a string Encrypted with the alphabet being rotated.
/// The alphabet should be rotated in a manner such that the letters
/// shift down by two multiplied to two places.
/// For example:
/// encrypt("hi") returns "lm"
/// encrypt("asdfghjkl") returns "ewhjklnop"
/// encrypt("gf") returns "kj"
/// encrypt("et") returns "ix"
func encrypt(_ s: String) -> String {
```

## declaration

```swift
func encrypt(_ s: String) -> String {
```

## example_test

```swift
precondition(encrypt("hi") == "lm")
precondition(encrypt("asdfghjkl") == "ewhjklnop")
precondition(encrypt("gf") == "kj")
precondition(encrypt("et") == "ix")
```
