import UIKit

//https://www.hackerrank.com/challenges/compare-the-triplets/problem
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var alice = 0
    var bob = 0
    for (index, aliceScore) in a.enumerated() {
        let bobScore = b[index]
        if aliceScore > bobScore {
            alice += 1
        } else if bobScore > aliceScore {
            bob += 1
        }
    }
    return [alice , bob]
}
