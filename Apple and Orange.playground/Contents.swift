import UIKit

//https://www.hackerrank.com/challenges/apple-and-orange

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let houseRange = s...t
    let applePostions = apples.map { $0 + a }
    let orangePostions = oranges.map { $0 + b }
    let appleCount = applePostions.filter { houseRange.contains($0) }.count
    let orangeCount = orangePostions.filter { houseRange.contains($0) }.count
    print(appleCount)
    print(orangeCount)
}

//Test cases
countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
