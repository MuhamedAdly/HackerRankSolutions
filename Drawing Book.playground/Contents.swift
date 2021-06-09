

// Challenge URL: https://www.hackerrank.com/challenges/drawing-book/problem
func pageCount(n: Int, p: Int) -> Int {
    let flipsFromBegining = abs(p/2)
    let addOneEven = ((n % 2) == 0) ? 1 : 0
    let flipsFromEnd = abs((n - p + addOneEven)/2)
    return min(flipsFromBegining, flipsFromEnd)
}


// Test cases

// inputs: n = 5, p = 3
// result = 1
pageCount(n: 5, p: 3)

// inputs: n = 6, p = 2
// result = 1
pageCount(n: 6, p: 2)

// inputs: n = 5, p = 4
// result = 0
pageCount(n: 5, p: 4)

// inputs: n = 6, p = 5
// result = 1
pageCount(n: 6, p: 5)
