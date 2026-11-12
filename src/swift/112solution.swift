func reverseDelete(_ s: String, c: String) -> (String, Bool) {
    let kept = s.filter { !c.contains($0) }
    return (kept, kept == String(kept.reversed()))
}
