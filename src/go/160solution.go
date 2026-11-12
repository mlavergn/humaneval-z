func DoAlgebra(operator []string, operand []int) int {
    higher := func(a, b string) bool {
        if b == "*" || b == "//" || b == "**" {
            return false
        }
        if a == "*" || a == "//" || a == "**" {
            return true
        }
        return false
    }
    for len(operand) > 1 {
        pos := 0
        sign := operator[0]
        for i, str := range operator {
            if higher(str, sign) {
                sign = str
                pos = i
            }
        }
        switch sign {
        case "+":
            operand[pos] += operand[pos+1]
        case "-":
            operand[pos] -= operand[pos+1]
        case "*":
            operand[pos] *= operand[pos+1]
        case "//":
            operand[pos] /= operand[pos+1]
        case "**":
            operand[pos] = int(math.Pow(float64(operand[pos]), float64(operand[pos+1])))
        }
        operator = append(operator[:pos], operator[pos+1:]...)
        operand = append(operand[:pos+1], operand[pos+2:]...)
    }
    return operand [0]
}
