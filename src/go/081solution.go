func NumericalLetterGrade(grades []float64) []string {
letter_grade := make([]string, 0, len(grades))
    for _, gpa := range grades {
        switch {
        case gpa == 4.0:
            letter_grade = append(letter_grade, "A+")
        case gpa > 3.7:
            letter_grade = append(letter_grade, "A")
        case gpa > 3.3:
            letter_grade = append(letter_grade, "A-")
        case gpa > 3.0:
            letter_grade = append(letter_grade, "B+")
        case gpa > 2.7:
            letter_grade = append(letter_grade, "B")
        case gpa > 2.3:
            letter_grade = append(letter_grade, "B-")
        case gpa > 2.0:
            letter_grade = append(letter_grade, "C+")
        case gpa > 1.7:
            letter_grade = append(letter_grade, "C")
        case gpa > 1.3:
            letter_grade = append(letter_grade, "C-")
        case gpa > 1.0:
            letter_grade = append(letter_grade, "D+")
        case gpa > 0.7:
            letter_grade = append(letter_grade, "D")
        case gpa > 0.0:
            letter_grade = append(letter_grade, "D-")
        default:
            letter_grade = append(letter_grade, "E")
        }

    }
    return letter_grade
}
