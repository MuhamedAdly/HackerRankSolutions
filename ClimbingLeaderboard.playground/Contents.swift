import UIKit

//https://www.hackerrank.com/challenges/climbing-the-leaderboard/
func climbingLeaderboardE(scores: [Int], alice: [Int]) -> [Int] {
    var ranks : Array<Int> = NSOrderedSet(array: scores).array as! Array<Int>
    //print(ranks)
    var aliceRanks = [Int]()
    for rank in alice {
            while !ranks.isEmpty && ranks[ranks.count - 1] <= rank {
                ranks.removeLast()
            }
        aliceRanks.append(ranks.count + 1)
    }
    return aliceRanks
}
//Case
climbingLeaderboardE(scores: [100, 90, 90, 80, 75, 60], alice: [80, 65, 77, 90, 102])
