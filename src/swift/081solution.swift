func numericalLetterGrade(_ grades: [Double]) -> [String] {
    return grades.map { g in
        switch g {
        case 4.0: return "A+"
        case let g where g > 3.7: return "A"
        case let g where g > 3.3: return "A-"
        case let g where g > 3.0: return "B+"
        case let g where g > 2.7: return "B"
        case let g where g > 2.3: return "B-"
        case let g where g > 2.0: return "C+"
        case let g where g > 1.7: return "C"
        case let g where g > 1.3: return "C-"
        case let g where g > 1.0: return "D+"
        case let g where g > 0.7: return "D"
        case let g where g > 0.0: return "D-"
        default: return "E"
        }
    }
}
