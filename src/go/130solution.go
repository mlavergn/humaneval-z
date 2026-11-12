func Tri(n int) []float64 {
    if n == 0 {
        return []float64{1}
    }
    my_tri := []float64{1, 3}
    for i := 2; i < n + 1; i++ {
        if i &1 == 0 {
            my_tri = append(my_tri, float64(i) / 2 + 1)
        } else {
            my_tri = append(my_tri, my_tri[i - 1] + my_tri[i - 2] + (float64(i) + 3) / 2)
        }
    }
    return my_tri
}
