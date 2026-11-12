precondition(parseNestedParens("(()()) ((())) () ((())()())") == [2, 3, 1, 3])
precondition(parseNestedParens("() (()) ((())) (((())))") == [1, 2, 3, 4])
precondition(parseNestedParens("(()(())((())))") == [4])
