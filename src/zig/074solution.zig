pub fn totalMatch(lst1: []const []const u8, lst2: []const []const u8) []const []const u8 {
    var numchar1: usize = 0;
    var numchar2: usize = 0;
    for (lst1) |item| numchar1 += item.len;
    for (lst2) |item| numchar2 += item.len;
    return if (numchar1 <= numchar2) lst1 else lst2;
}
