pub fn isPalindrome(text: []const u8) bool {
    for (0..text.len / 2) |i| {
        if (text[i] != text[text.len - 1 - i]) return false;
    }
    return true;
}
