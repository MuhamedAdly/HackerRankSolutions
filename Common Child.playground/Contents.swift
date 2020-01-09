import UIKit

//https://www.hackerrank.com/challenges/common-child
//Reference : https://www.youtube.com/watch?v=TiS7FKsZZHY
func commonChild(s1: String, s2: String) -> Int {
    var matrix = Array(repeating: Array(repeating: 0, count: s1.count), count: s2.count)
    for (s2Index, s2Char) in s2.enumerated() {
        for (s1Index, s1Char) in s1.enumerated() {
            var newValue = 0
            if s1Char == s2Char {
                newValue = ((s2Index > 0 && s1Index > 0) ? (matrix[s2Index - 1 ][s1Index - 1]) : 0) + 1
            } else {
                let topV =  s2Index > 0 ?  matrix[s2Index-1][s1Index]  : 0
                let prevV =  s1Index > 0 ?  matrix[s2Index][s1Index - 1] : 0
                newValue = max(topV, prevV)
            }
            matrix[s2Index][s1Index] = newValue
        }
    }
    return matrix.last?.last ?? 0
}

//Test cases
//commonChild(s1: "SHINCHAN", s2: "NOHARAAA")
//commonChild(s1: "ABCD", s2: "ABDC")
//commonChild(s1: "ELGGYJWKTDHLXJRBJLRYEJWVSUFZKYHOIKBGTVUTTOCGMLEXWDSXEBKRZTQUVCJNGKKRMUUBACVOEQKBFFYBUQEMYNENKYYGUZSP", s2: "FRVIFOVJYQLVZMFBNRUTIYFBMFFFRZVBYINXLDDSVMPWSQGJZYTKMZIPEGMVOUQBKYEWEYVOLSHCMHPAZYTENRNONTJWDANAMFRX") //27
