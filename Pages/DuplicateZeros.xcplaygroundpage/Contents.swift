class DuplicateZeros {
    func duplicateZeros(_ arr: inout [Int]) {
        
        var zeroCount = 0
        
        for i in arr {
            if i == 0 {
                zeroCount += 1
            }
        }
        
        var n = arr.count
        
        var i = n - 1
        var j = n - 1 + zeroCount
        
        while i >= 0 && j >= 0 {
            if arr[i] != 0 {
                if j < n {
                    arr[j] = arr[i]
                }
                j -= 1
            } else {
                if j < n {
                    arr[j] = 0
                }
                j -= 1
                if j < n {
                    arr[j] = 0
                }
                j -= 1
            }
            i -= 1
        }
    }
}

// Create an instance of the class
let solution = DuplicateZeros()

// Example 1
var nums1 = [1, 0, 2, 3, 0, 4, 5, 0]
solution.duplicateZeros(&nums1)
print("Input: [1, 0, 2, 3, 0, 4, 5, 0]")
print("Output: \(nums1)")
print("Expected: [1, 0, 0, 2, 3, 0, 0, 4]")

// Example 2
var nums2 = [1, 2, 3]
solution.duplicateZeros(&nums2)
print("Input: [1, 2, 3]")
print("Output: \(nums2)")
print("Expected: [1, 2, 3]")
