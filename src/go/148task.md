## task_id

```
Go/148
```

## prompt

```go

// There are eight planets in our solar system: the closerst to the Sun
// is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn,
// Uranus, Neptune.
// Write a function that takes two planet names as strings planet1 and planet2.
// The function should return a tuple containing all planets whose orbits are
// located between the orbit of planet1 and the orbit of planet2, sorted by
// the proximity to the sun.
// The function should return an empty tuple if planet1 or planet2
// are not correct planet names.
// Examples
// Bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
// Bf("Earth", "Mercury") ==> ("Venus")
// Bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
func Bf(planet1, planet2 string) []string {
```

## declaration

```go
func Bf(planet1, planet2 string) []string {
```

## example_test

```go
func TestBf(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"Saturn", "Uranus"}, Bf("Jupiter", "Neptune"))
    assert.Equal([]string{"Venus"}, Bf("Earth", "Mercury"))
    assert.Equal([]string{"Venus", "Earth", "Mars", "Jupiter", "Saturn"}, Bf("Mercury", "Uranus"))
    assert.Equal([]string{"Earth", "Mars", "Jupiter", "Saturn", "Uranus"}, Bf("Neptune", "Venus"))
    assert.Equal([]string{}, Bf("Earth", "Earth"))
    assert.Equal([]string{}, Bf("Mars", "Earth"))
    assert.Equal([]string{}, Bf("Jupiter", "Makemake"))
}
```
