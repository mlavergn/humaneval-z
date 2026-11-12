## task_id

```
Swift/141
```

## prompt

```swift
import Foundation

/// Create a function which takes a string representing a file's name, and returns
/// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
/// A file's name is considered to be valid if and only if all the following conditions
/// are met:
/// - There should not be more than three digits ('0'-'9') in the file's name.
/// - The file's name contains exactly one dot '.'
/// - The substring before the dot should not be empty, and it starts with a letter from
/// the latin alphapet ('a'-'z' and 'A'-'Z').
/// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
/// Examples:
/// fileNameCheck("example.txt") # => "Yes"
/// fileNameCheck("1example.dll") # => "No" (the name should start with a latin alphapet letter)
func fileNameCheck(_ fileName: String) -> String {
```

## declaration

```swift
func fileNameCheck(_ fileName: String) -> String {
```

## example_test

```swift
precondition(fileNameCheck("example.txt") == "Yes")
precondition(fileNameCheck("1example.dll") == "No")
```
