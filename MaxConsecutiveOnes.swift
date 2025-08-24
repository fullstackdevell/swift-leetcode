class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var currentCount = 0
        var bestScore = 0
        
        for num in nums {
            if num == 1 {
                currentCount += 1
                if currentCount > bestScore {
                    bestScore = currentCount
                }
            } else {
                currentCount = 0
            }
        }
        return bestScore
    }
}
