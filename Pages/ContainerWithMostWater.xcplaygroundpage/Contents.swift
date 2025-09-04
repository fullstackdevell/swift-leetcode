class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        var start = 0
        var end = height.count - 1

        var maxWater = 0

        while start < end {
            maxWater = max(maxWater, (end - start) * min(height[start], height[end]))
            if height[start] < height[end] {
                start += 1
            } else {
                end -= 1
            }
        }
        return maxWater
    }
}
