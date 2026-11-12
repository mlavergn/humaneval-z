func GetRow(lst [][]int, x int) [][2]int {
    coords := make([][2]int, 0)
    for i, row := range lst {
        for j, item := range row {
            if item == x {
                coords = append(coords, [2]int{i, j})
            }
        }
    }
    sort.Slice(coords, func(i, j int) bool {
        if coords[i][0] == coords[j][0] {
            return coords[i][1] > coords[j][1]
        }
        return coords[i][0] < coords[j][0]
    })

    return coords
}
