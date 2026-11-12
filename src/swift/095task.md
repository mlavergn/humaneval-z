## task_id

```
Swift/95
```

## prompt

```swift
import Foundation

/// Given a dictionary, return true if all keys are strings in lower
/// case or all keys are strings in upper case, else return false.
/// The function should return false is the given dictionary is empty.
/// Examples:
/// checkDictCase(["a":"apple", "b":"banana"]) should return true.
/// checkDictCase(["a":"apple", "A":"banana", "B":"banana"]) should return false.
/// checkDictCase(["a":"apple", 8:"banana", "a":"apple"]) should return false.
/// checkDictCase(["Name":"John", "Age":"36", "City":"Houston"]) should return false.
/// checkDictCase(["STATE":"NC", "ZIP":"12345"]) should return true.
func checkDictCase(_ dict: [String: String]) -> Bool {
```

## declaration

```swift
func checkDictCase(_ dict: [String: String]) -> Bool {
```

## example_test

```swift
precondition(checkDictCase(["p": "pineapple", "b": "banana"]))
precondition(!checkDictCase(["p": "pineapple", "A": "banana", "B": "banana"]))
precondition(!checkDictCase(["p": "pineapple", "5": "banana", "a": "apple"]))
precondition(!checkDictCase(["Name": "John", "Age": "36", "City": "Houston"]))
precondition(checkDictCase(["STATE": "NC", "ZIP": "12345"]))
```
