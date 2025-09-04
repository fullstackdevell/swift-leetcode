class FindNumbersWithEvenNumberOfDigits {
    func findNumbers(_ nums: [Int]) -> Int {
        var evenNumbers = 0

        for num in nums {
            var number = num
            var digitCount = 0

            while number > 0 {
                number = number / 10
                digitCount += 1
            }
            if digitCount % 2 == 0 {
                evenNumbers += 1
            }
        }
        return evenNumbers
    }
}

// Create an instance of the class
let solution = FindNumbersWithEvenNumberOfDigits()

// Test Case 1
let nums1 = [12, 345, 2, 6, 7896]
let result1 = solution.findNumbers(nums1)
print("Input: \(nums1), Output: \(result1)") // Expected Output: 2

// Test Case 2
let nums2 = [555, 901, 482, 1771]
let result2 = solution.findNumbers(nums2)
print("Input: \(nums2), Output: \(result2)") // Expected Output: 1
