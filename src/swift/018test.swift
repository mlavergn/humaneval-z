precondition(howManyTimes("", substring: "x") == 0)
precondition(howManyTimes("xyxyxyx", substring: "x") == 4)
precondition(howManyTimes("cacacacac", substring: "cac") == 4)
precondition(howManyTimes("john doe", substring: "john") == 1)
