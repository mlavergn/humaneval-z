## task_id

```
Swift/44
```

## prompt

```swift
import Foundation

/// Change numerical base of input number x to base.
/// return string representation after the conversion.
/// base numbers are less than 10.
/// >>> changeBase(8, base: 3)
/// "22"
/// >>> changeBase(8, base: 2)
/// "1000"
/// >>> changeBase(7, base: 2)
/// "111"
func changeBase(_ x: Int, base: Int) -> String {
```

## declaration

```swift
func changeBase(_ x: Int, base: Int) -> String {
```

## example_test

```swift
precondition(changeBase(8, base: 3) == "22")
precondition(changeBase(8, base: 2) == "1000")
precondition(changeBase(7, base: 2) == "111")
```
