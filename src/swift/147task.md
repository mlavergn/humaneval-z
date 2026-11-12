## task_id

```
Swift/147
```

## prompt

```swift
import Foundation

/// You are given a positive integer n. You have to create an integer array a of length n.
/// For each i (1 ≤ i ≤ n), the value of a[i] = i * i - i + 1.
/// Return the number of triples (a[i], a[j], a[k]) of a where i < j < k,
/// and a[i] + a[j] + a[k] is a multiple of 3.
///
/// Example :
/// Input: n = 5
/// Output: 1
/// Explanation:
/// a = [1, 3, 7, 13, 21]
/// The only valid triple is (1, 7, 13).
func getMaxTriples(_ n: Int) -> Int {
```

## declaration

```swift
func getMaxTriples(_ n: Int) -> Int {
```

## example_test

```swift
precondition(getMaxTriples(5) == 1)
```
