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
