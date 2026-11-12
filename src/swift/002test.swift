precondition(truncateNumber(3.5) == 0.5)
precondition(abs(truncateNumber(1.33) - 0.33) < 1e-6)
precondition(abs(truncateNumber(123.456) - 0.456) < 1e-6)
