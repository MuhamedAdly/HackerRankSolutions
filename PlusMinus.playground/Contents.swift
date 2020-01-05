import UIKit

//https://www.hackerrank.com/challenges/plus-minus/problem
func plusMinus(arr: [Int]) -> Void {

    let minCount = (Float(arr.filter { $0 < 0}.count) / Float(arr.count))
    let plusCount = (Float(arr.filter { $0 > 0}.count) / Float(arr.count))
    let zeroCount = (Float(arr.filter { $0 == 0}.count) / Float(arr.count))
    print(plusCount)
    print(minCount)
    print(zeroCount)
    
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])
