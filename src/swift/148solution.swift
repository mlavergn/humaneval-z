func bf(_ planet1: String, _ planet2: String) -> [String] {
    let planetNames = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
    guard let p1 = planetNames.firstIndex(of: planet1), let p2 = planetNames.firstIndex(of: planet2), p1 != p2 else {
        return []
    }
    return Array(planetNames[(min(p1, p2) + 1)..<max(p1, p2)])
}
