## task_id

```
Swift/16
```

## prompt

```swift
import Foundation

/// Given a string, find out how many distinct characters (regardless of case) does it consist of
/// >>> countDistinctCharacters("xyzXYZ")
/// 3
/// >>> countDistinctCharacters("Jerry")
/// 4
func countDistinctCharacters(_ string: String) -> Int {
```

## declaration

```swift
func countDistinctCharacters(_ string: String) -> Int {
```

## example_test

```swift
precondition(countDistinctCharacters("xyzXYZ") == 3)
precondition(countDistinctCharacters("Jerry") == 4)
```
