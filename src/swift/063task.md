## task_id

```
Swift/63
```

## prompt

```swift
import Foundation

/// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
/// fibfib(0) == 0
/// fibfib(1) == 0
/// fibfib(2) == 1
/// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
/// Please write a function to efficiently compute the n-th element of the Fibfib number sequence.
/// >>> fibfib(1)
/// 0
/// >>> fibfib(5)
/// 4
/// >>> fibfib(8)
/// 24
func fibfib(_ n: Int) -> Int {
```

## declaration

```swift
func fibfib(_ n: Int) -> Int {
```

## example_test

```swift
precondition(fibfib(1) == 0)
precondition(fibfib(5) == 4)
precondition(fibfib(8) == 24)
```
