precondition(getPositive([-1, -2, 4, 5, 6]) == [4, 5, 6])
precondition(getPositive([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1])
precondition(getPositive([-1, -2]) == [])
precondition(getPositive([]) == [])
