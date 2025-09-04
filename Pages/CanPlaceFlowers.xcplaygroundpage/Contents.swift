class CanPlaceFlowers {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowersToPlant = n
        var bed = flowerbed
        var i = 0

        while i < bed.count {
            if bed[i] == 0 {
                let leftEmpty = (i == 0 || bed[i-1] == 0)
                let rightEmpty = (i == bed.count - 1 || bed[i+1] == 0)

                if leftEmpty && rightEmpty {
                    bed[i] = 1
                    flowersToPlant -= 1

                    if flowersToPlant <= 0 {
                        return true
                    }
                    i += 1
                }
            }
            i += 1
        }
        return flowersToPlant <= 0
    }
}
