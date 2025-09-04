class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var myDictionary: [Int: Int] = [:]
            // this dictionary will store (number: index) pairs for quick lookup

        for (index, element) in nums.enumerated() {
            // enumerated() gives the index and the value of the element
            let complement = target - element
            
            if let complementIndex = myDictionary[complement] {
                // check if complement number already exists in dictionary
                return [complementIndex, index]
            } else {
                myDictionary[element] = index
                    // add the current element and its position to dictionary
            }
        }
        return []
    }
}
