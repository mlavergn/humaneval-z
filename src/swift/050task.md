## task_id

```
Swift/50
```

## prompt

```swift
import Foundation

/// returns encoded string by shifting every character by 5 in the alphabet.
func encodeShift(_ s: String) -> String {
    let a = Character("a").asciiValue!
    return String(s.map { Character(UnicodeScalar(($0.asciiValue! - a + 5) % 26 + a)) })
}

/// takes as input string encoded with encodeShift function. Returns decoded string.
func decodeShift(_ s: String) -> String {
```

## declaration

```swift
func decodeShift(_ s: String) -> String {
```

## example_test

```swift
```
