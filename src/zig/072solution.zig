pub fn willItFly(q: []const i64, w: i64) bool {
    var sum: i64 = 0;
    for (q) |x| sum += x;
    return sum <= w and isPalindrome(q);
}

pub fn isPalindrome(arr: []const i64) bool {
    for (0..arr.len / 2) |i| {
        if (arr[i] != arr[arr.len - 1 - i]) return false;
    }
    return true;
}
