## task_id

```
Go/50
```

## prompt

```go
// returns encoded string by shifting every character by 5 in the alphabet.
func EncodeShift(s string) string {
    runes := []rune(s)
    newRunes := make([]rune, 0)
    for _, ch := range runes {
        newRunes = append(newRunes, (ch+5-'a')%26+'a')
    }
    return string(runes)
}

// takes as input string encoded with EncodeShift function. Returns decoded string.
func DecodeShift(s string) string {
```

## declaration

```go
func DecodeShift(s string) string {
```

## example_test

```go
```
