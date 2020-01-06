import UIKit

//https://www.hackerrank.com/challenges/birthday-cake-candles/problem
func birthdayCakeCandles(ar: [Int]) -> Int {
    let maxCandles  = Dictionary(grouping: ar, by: { $0}).values.map { $0.count}.max() ?? 0
    return maxCandles
}

birthdayCakeCandles(ar: [3, 2, 1, 3])
