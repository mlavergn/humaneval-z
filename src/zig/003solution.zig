pub fn belowZero(operations: []const i64) bool {
    var balance: i64 = 0;
    for (operations) |op| {
        balance += op;
        if (balance < 0) return true;
    }
    return false;
}
