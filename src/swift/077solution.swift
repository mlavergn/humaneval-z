func iscube(_ a: Int) -> Bool {
    let root = Int(cbrt(Double(abs(a))).rounded())
    return root * root * root == abs(a)
}
