## task_id

```
Swift/31
```

## prompt

```swift
import Foundation

/// Return true if a given number is prime, and false otherwise.
/// >>> isPrime(6)
/// false
/// >>> isPrime(101)
/// true
/// >>> isPrime(11)
/// true
/// >>> isPrime(13441)
/// true
/// >>> isPrime(61)
/// true
/// >>> isPrime(4)
/// false
/// >>> isPrime(1)
/// false
func isPrime(_ n: Int) -> Bool {
```

## declaration

```swift
func isPrime(_ n: Int) -> Bool {
```

## example_test

```swift
precondition(!isPrime(6))
precondition(isPrime(101))
precondition(isPrime(11))
precondition(isPrime(13441))
precondition(isPrime(61))
precondition(!isPrime(4))
precondition(!isPrime(1))
```
