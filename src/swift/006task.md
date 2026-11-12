## task_id

```
Swift/6
```

## prompt

```swift
import Foundation

/// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
/// For each of the group, output the deepest level of nesting of parentheses.
/// E.g. (()()) has maximum two levels of nesting while ((())) has three.
///
/// >>> parseNestedParens("(()()) ((())) () ((())()())")
/// [2, 3, 1, 3]
func parseNestedParens(_ parenString: String) -> [Int] {
```

## declaration

```swift
func parseNestedParens(_ parenString: String) -> [Int] {
```

## example_test

```swift
precondition(parseNestedParens("(()()) ((())) () ((())()())") == [2, 3, 1, 3])
```
