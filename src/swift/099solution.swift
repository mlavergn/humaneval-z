func closestInteger(_ value: String) -> Int {
    guard let num = Double(value) else { return 0 }
    // .rounded() rounds halfway cases away from zero.
    return Int(num.rounded())
}
