import UIKit

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var result = "NO"
    if (x1 == x2 && abs(v2-v1) > 0) || ((v2 == v1) && abs(x2 - x1) > 0) {
        return result
    }
    if (x2 - x1) >= 0 && (v2 - v1) > 0 {
        return result
    }
    var x1Location = x1
    var x2Locaiton = x2
    while true {
        x1Location += v1
        x2Locaiton += v2
        if x1Location == x2Locaiton {
            result = "YES"
            break
        } else if x1Location > x2Locaiton {
            result = "NO"
            break
        }
    }
    return result
}

//Test cases
kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
kangaroo(x1: 63, v1: 8, x2: 94, v2: 3)
