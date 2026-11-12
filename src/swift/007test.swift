precondition(filterBySubstring([], substring: "john") == [])
precondition(filterBySubstring(["xxx", "asd", "xxy", "john doe", "xxxAAA", "xxx"], substring: "xxx") == ["xxx", "xxxAAA", "xxx"])
precondition(filterBySubstring(["xxx", "asd", "aaaxxy", "john doe", "xxxAAA", "xxx"], substring: "xx") == ["xxx", "aaaxxy", "xxxAAA", "xxx"])
precondition(filterBySubstring(["grunt", "trumpet", "prune", "gruesome"], substring: "run") == ["grunt", "prune"])
