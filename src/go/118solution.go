func GetClosestVowel(word string) string {
    if len(word) < 3 {
        return ""
    }

    vowels := []byte("aeiouAEOUI")
    for i := len(word)-2; i > 0; i-- {
        if bytes.Contains(vowels, []byte{word[i]}) {
            if !bytes.Contains(vowels, []byte{word[i+1]}) && !bytes.Contains(vowels, []byte{word[i-1]}) {
                return string(word[i])
            }
        }
    }
    return ""
}
