import UIKit

//https://www.hackerrank.com/challenges/pangrams
func pangrams(s: String) -> String {
    let lowerS = s.lowercased()
    for char in "abcdefghijklmnopqrstuvwxyz" {
        if !lowerS.contains(char) {
            return "not pangram"
        }
    }
    return "pangram"
}

pangrams(s: "We promptly judged antique ivory buckles for the next prize")
pangrams(s: "We promptly judged antique ivory buckles for the prize")
