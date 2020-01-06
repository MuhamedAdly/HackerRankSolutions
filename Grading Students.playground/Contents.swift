import UIKit

//https://www.hackerrank.com/challenges/grading/problem
func gradingStudents(grades: [Int]) -> [Int] {
    var finalGrades = [Int]()
    grades.forEach {
        if $0 < 38 {
            finalGrades.append($0)
        } else {
            if ($0+1).isMultiple(of: 5) {
                finalGrades.append($0+1)
            } else if ($0+2).isMultiple(of: 5) {
                finalGrades.append($0+2)
            } else  {
                finalGrades.append($0)
            }
        }
    }
    return finalGrades
}

gradingStudents(grades: [73, 67, 38, 33])
