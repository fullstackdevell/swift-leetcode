class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result: [Bool] = []
        let maxCandies = candies.max()!
        
        for i in 0..<candies.count {
            if candies[i] + extraCandies >= maxCandies {
                result.append(true)
            } else {
                result.append(false)
            }
        }
        return result
    }
}
