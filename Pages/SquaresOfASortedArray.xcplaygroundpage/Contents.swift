class SquaresOfASortedArray {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var squaredArray: [Int] = []
        
        for num in nums {
            var number = num * num
            squaredArray.append(number)
        }
        squaredArray.sort()
        
        return squaredArray
    }
}

// Create an instance of the class
let solution = SquaresOfASortedArray()

// Example 1
let nums1 = [-4, -1, 0, 3, 10]
let output1 = solution.sortedSquares(nums1)
print("Input: \(nums1)")
print("Output: \(output1)")
print("Expected: [0, 1, 9, 16, 100]")
print("---")

// Example 2
let nums2 = [-7, -3, 2, 3, 11]
let output2 = solution.sortedSquares(nums2)
print("Input: \(nums2)")
print("Output: \(output2)")
print("Expected: [4, 9, 9, 49, 121]")
