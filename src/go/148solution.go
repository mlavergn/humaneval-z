func Bf(planet1, planet2 string) []string {
    planet_names := []string{"Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"}
    pos1 := -1
    pos2 := -1
    for i, x := range planet_names {
        if planet1 == x {
            pos1 = i
        }
        if planet2 == x {
            pos2 = i
        }
    }
    if pos1 == -1 || pos2 == -1 || pos1 == pos2 {
        return []string{}
    }
    if pos1 < pos2 {
        return planet_names[pos1 + 1: pos2]
    }
    return planet_names[pos2 + 1 : pos1]
}
