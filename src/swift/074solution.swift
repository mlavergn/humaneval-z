func totalMatch(_ lst1: [String], _ lst2: [String]) -> [String] {
    let numchar1 = lst1.reduce(0) { $0 + $1.count }
    let numchar2 = lst2.reduce(0) { $0 + $1.count }
    return numchar1 <= numchar2 ? lst1 : lst2
}
