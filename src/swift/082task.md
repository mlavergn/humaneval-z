## task_id

```
Swift/82
```

## prompt

```swift
import Foundation

/// Write a function that takes a string and returns true if the string
/// length is a prime number or false otherwise
/// Examples
/// primeLength("Hello") == true
/// primeLength("abcdcba") == true
/// primeLength("kittens") == true
/// primeLength("orange") == false
func primeLength(_ string: String) -> Bool {
```

## declaration

```swift
func primeLength(_ string: String) -> Bool {
```

## example_test

```swift
precondition(primeLength("Hello"))
precondition(primeLength("abcdcba"))
precondition(primeLength("kittens"))
precondition(!primeLength("orange"))
```
