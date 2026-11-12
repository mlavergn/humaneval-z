precondition(filterIntegers([]) == [])
precondition(filterIntegers([.int(4), .none, .list([]), .double(23.2), .int(9), .string("adasd")]) == [4, 9])
precondition(filterIntegers([.int(3), .string("c"), .int(3), .int(3), .string("a"), .string("b")]) == [3, 3, 3])
