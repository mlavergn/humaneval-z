func isSorted(_ lst: [Int]) -> Bool {
    for i in lst.indices.dropFirst() {
        if lst[i - 1] > lst[i] { return false }
        // Sorted, so more than two copies means three equal neighbours.
        if i > 1 && lst[i - 2] == lst[i] && lst[i - 1] == lst[i] { return false }
    }
    return true
}
