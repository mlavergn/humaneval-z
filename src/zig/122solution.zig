pub fn addElements(arr: []const i64, k: i64) i64 {
    var sum: i64 = 0;
    for (arr[0..@intCast(k)]) |elem| {
        // At most two characters when printed (a minus sign counts).
        if (elem > -10 and elem < 100) sum += elem;
    }
    return sum;
}
