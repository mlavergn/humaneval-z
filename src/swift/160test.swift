precondition(doAlgebra(operator: ["**", "*", "+"], operand: [2, 3, 4, 5]) == 37)
precondition(doAlgebra(operator: ["+", "*", "-"], operand: [2, 3, 4, 5]) == 9)
precondition(doAlgebra(operator: ["//", "*"], operand: [7, 3, 4]) == 8)
