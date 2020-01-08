import UIKit

//https://www.hackerrank.com/challenges/almost-sorted
func almostSorted(arr: [Int]) -> Void {
    let sortedArray = arr.sorted()
    var diffNumbers = [Int]()
    var diffSortedNumbers = [Int]()
    for (index, item) in arr.enumerated() {
        let sortedItem = sortedArray[index]
        if sortedItem != item {
            diffNumbers.append(item)
            diffSortedNumbers.append(sortedItem)
        }
    }
    //print(diffSortedNumbers)
    //print(diffNumbers)
    if diffNumbers.count == 0 {
        print("yes")
        return
    }
    if diffNumbers.count == 2 && diffNumbers.first == diffSortedNumbers.last && diffNumbers.last == diffSortedNumbers.first {
        print("yes")
        let indexOfFirst = arr.firstIndex(of: diffNumbers.first!)
        let indexOfSecond = arr.firstIndex(of: diffNumbers.last!)
        print("swap \(indexOfFirst! + 1) \(indexOfSecond!+1)")
        return
    } else if diffNumbers.count > 2 && diffNumbers.first == diffSortedNumbers.last && diffNumbers.last == diffSortedNumbers.first {
        print("yes")
        let indexOfFirst = arr.firstIndex(of: diffNumbers.first!)
        let indexOfSecond = arr.firstIndex(of: diffNumbers.last!)
        print("reverse \(indexOfFirst!+1) \(indexOfSecond!+1)")
        return
    }
    print("no")
}

//Test casess
//almostSorted(arr: [3, 1, 2])
//almostSorted(arr: [4,2])
//almostSorted(arr: [1, 5, 4, 3, 2, 6])
