precondition(separateParenGroups("(()()) ((())) () ((())()())") == ["(()())", "((()))", "()", "((())()())"])
precondition(separateParenGroups("() (()) ((())) (((())))") == ["()", "(())", "((()))", "(((())))"])
precondition(separateParenGroups("(()(())((())))") == ["(()(())((())))"])
precondition(separateParenGroups("( ) (( )) (( )( ))") == ["()", "(())", "(()())"])
