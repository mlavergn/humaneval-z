pub fn triangleArea(a: f64, b: f64, c: f64) f64 {
    if (a + b <= c or a + c <= b or b + c <= a) return -1;
    const s = (a + b + c) / 2;
    const area = @sqrt(s * (s - a) * (s - b) * (s - c));
    return @round(area * 100) / 100;
}
