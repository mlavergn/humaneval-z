## task_id

```
Swift/162
```

## prompt

```swift
import Foundation

/// Given a string 'text', return its md5 hash equivalent string.
/// If 'text' is an empty string, return nil.
///
/// >>> stringToMd5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
func stringToMd5(_ text: String) -> String? {
```

## declaration

```swift
func stringToMd5(_ text: String) -> String? {
```

## example_test

```swift
precondition(stringToMd5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62")
```
