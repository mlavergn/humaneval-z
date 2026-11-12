## task_id

```
Swift/38
```

## prompt

```swift
import Foundation

/// returns encoded string by cycling groups of three characters.
func encodeCyclic(_ s: String) -> String {
    var chars = Array(s)
    var i = 0
    while i + 3 <= chars.count {
        chars[i..<(i + 3)] = [chars[i + 1], chars[i + 2], chars[i]]
        i += 3
    }
    return String(chars)
}

/// takes as input string encoded with encodeCyclic function. Returns decoded string.
func decodeCyclic(_ s: String) -> String {
```

## declaration

```swift
func decodeCyclic(_ s: String) -> String {
```

## example_test

```swift
```
