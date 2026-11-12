## task_id

```
Swift/67
```

## prompt

```swift
import Foundation

/// In this task, you will be given a string that represents a number of apples and oranges
/// that are distributed in a basket of fruit this basket contains
/// apples, oranges, and mango fruits. Given the string that represents the total number of
/// the oranges and apples and an integer that represent the total number of the fruits
/// in the basket return the number of the mango fruits in the basket.
/// for examble:
/// fruitDistribution("5 apples and 6 oranges", n: 19) ->19 - 5 - 6 = 8
/// fruitDistribution("0 apples and 1 oranges", n: 3) -> 3 - 0 - 1 = 2
/// fruitDistribution("2 apples and 3 oranges", n: 100) -> 100 - 2 - 3 = 95
/// fruitDistribution("100 apples and 1 oranges", n: 120) -> 120 - 100 - 1 = 19
func fruitDistribution(_ s: String, n: Int) -> Int {
```

## declaration

```swift
func fruitDistribution(_ s: String, n: Int) -> Int {
```

## example_test

```swift
precondition(fruitDistribution("5 apples and 6 oranges", n: 19) == 8)
precondition(fruitDistribution("0 apples and 1 oranges", n: 3) == 2)
precondition(fruitDistribution("2 apples and 3 oranges", n: 100) == 95)
precondition(fruitDistribution("1 apples and 100 oranges", n: 120) == 19)
```
