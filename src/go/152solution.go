func Compare(game,guess []int) []int {
    ans := make([]int, 0, len(game))
    for i := range game {
        ans = append(ans, int(math.Abs(float64(game[i]-guess[i]))))
    }
    return ans
}
