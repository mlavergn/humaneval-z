precondition(filterByPrefix([], prefix: "john") == [])
precondition(filterByPrefix(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], prefix: "xxx") == ["xxx", "xxxAAA", "xxx"])
