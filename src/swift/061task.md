## task_id

```
Swift/61
```

## prompt

```swift
import Foundation

/// brackets is a string of "(" and ")".
/// return true if every opening bracket has a corresponding closing bracket.
///
/// >>> correctBracketing("(")
/// false
/// >>> correctBracketing("()")
/// true
/// >>> correctBracketing("(()())")
/// true
/// >>> correctBracketing(")(()")
/// false
func correctBracketing(_ brackets: String) -> Bool {
```

## declaration

```swift
func correctBracketing(_ brackets: String) -> Bool {
```

## example_test

```swift
precondition(correctBracketing("()"))
precondition(correctBracketing("(()())"))
precondition(!correctBracketing(")(()"))
precondition(!correctBracketing("("))
```
