## task_id

```
Go/17
```

## prompt

```go

// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
// 
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
// 
// >>> ParseMusic('o o| .| o| o| .| .| .| .| o o')
// [4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4]
func ParseMusic(music_string string) []int{
```

## declaration

```go
func ParseMusic(music_string string) []int{
```

## example_test

```go
func TestParseMusic(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4}, ParseMusic("o o| .| o| o| .| .| .| .| o o"))
}
```
