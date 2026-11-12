## task_id

```
Swift/79
```

## prompt

```swift
import Foundation

/// You will be given a number in decimal form and your task is to convert it to
/// binary format. The function should return a string, with each character representing a binary
/// number. Each character in the string will be '0' or '1'.
///
/// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
/// The extra characters are there to help with the format.
///
/// Examples:
/// decimalToBinary(15)   # returns "db1111db"
/// decimalToBinary(32)   # returns "db100000db"
func decimalToBinary(_ decimal: Int) -> String {
```

## declaration

```swift
func decimalToBinary(_ decimal: Int) -> String {
```

## example_test

```swift
precondition(decimalToBinary(32) == "db100000db")
precondition(decimalToBinary(15) == "db1111db")
```
