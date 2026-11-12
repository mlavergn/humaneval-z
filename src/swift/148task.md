## task_id

```
Swift/148
```

## prompt

```swift
import Foundation

/// There are eight planets in our solar system: the closerst to the Sun
/// is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn,
/// Uranus, Neptune.
/// Write a function that takes two planet names as strings planet1 and planet2.
/// The function should return a tuple containing all planets whose orbits are
/// located between the orbit of planet1 and the orbit of planet2, sorted by
/// the proximity to the sun.
/// The function should return an empty tuple if planet1 or planet2
/// are not correct planet names.
/// Examples
/// bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
/// bf("Earth", "Mercury") ==> ("Venus")
/// bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
func bf(_ planet1: String, _ planet2: String) -> [String] {
```

## declaration

```swift
func bf(_ planet1: String, _ planet2: String) -> [String] {
```

## example_test

```swift
precondition(bf("Jupiter", "Neptune") == ["Saturn", "Uranus"])
precondition(bf("Earth", "Mercury") == ["Venus"])
precondition(bf("Mercury", "Uranus") == ["Venus", "Earth", "Mars", "Jupiter", "Saturn"])
precondition(bf("Neptune", "Venus") == ["Earth", "Mars", "Jupiter", "Saturn", "Uranus"])
precondition(bf("Earth", "Earth") == [])
precondition(bf("Mars", "Earth") == [])
precondition(bf("Jupiter", "Makemake") == [])
```
