func validDate(_ date: String) -> Bool {
    let parts = date.trimmingCharacters(in: .whitespaces).split(separator: "-", omittingEmptySubsequences: false)
    guard parts.count == 3, let month = Int(parts[0]), let day = Int(parts[1]), Int(parts[2]) != nil else {
        return false
    }
    guard (1...12).contains(month) else { return false }
    let maxDay: Int
    switch month {
    case 1, 3, 5, 7, 8, 10, 12: maxDay = 31
    case 4, 6, 9, 11: maxDay = 30
    default: maxDay = 29
    }
    return (1...maxDay).contains(day)
}
