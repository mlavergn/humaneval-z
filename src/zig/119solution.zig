pub fn matchParens(lst: []const []const u8) []const u8 {
    const check = struct {
        fn f(first: []const u8, second: []const u8) bool {
            var val: i64 = 0;
            for ([_][]const u8{ first, second }) |part| {
                for (part) |c| {
                    val += if (c == '(') 1 else -1;
                    if (val < 0) return false;
                }
            }
            return val == 0;
        }
    }.f;
    return if (check(lst[0], lst[1]) or check(lst[1], lst[0])) "Yes" else "No";
}
