## task_id

```
Swift/19
```

## prompt

```swift
import Foundation

/// Input is a space-delimited string of numberals from 'zero' to 'nine'.
/// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
/// Return the string with numbers sorted from smallest to largest
/// >>> sortNumbers("three one five")
/// "one three five"
func sortNumbers(_ numbers: String) -> String {
```

## declaration

```swift
func sortNumbers(_ numbers: String) -> String {
```

## example_test

```swift
precondition(sortNumbers("three one five") == "one three five")
```
