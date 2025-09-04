class MaxConsecutiveOnes {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var bestScore = 0
        var currentCount = 0
        
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

// Test Cases
let solution = MaxConsecutiveOnes()

// Example 1
let nums1 = [1,1,0,1,1,1]
let result1 = solution.findMaxConsecutiveOnes(nums1)
print("Input: \(nums1), Output: \(result1)") // Expected Output: 3

// Example 2
let nums2 = [1,0,1,1,0,1]
let result2 = solution.findMaxConsecutiveOnes(nums2)
print("Input: \(nums2), Output: \(result2)") // Expected Output: 2
