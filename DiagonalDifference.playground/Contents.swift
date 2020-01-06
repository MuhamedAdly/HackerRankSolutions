import UIKit

//https://www.hackerrank.com/challenges/diagonal-difference/problem
func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    // sum the first diag
    var firstDiag = 0
    var secondDiag = 0
    for (index, val) in arr.enumerated() {
        let index1 = index
        let index2 = val.count - index - 1
        firstDiag += val[index1]
        secondDiag += val[index2]
    }
    return abs(firstDiag - secondDiag)
}

