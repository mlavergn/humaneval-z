precondition(rollingMax([]) == [])
precondition(rollingMax([1, 2, 3, 4]) == [1, 2, 3, 4])
precondition(rollingMax([4, 3, 2, 1]) == [4, 4, 4, 4])
precondition(rollingMax([3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])
