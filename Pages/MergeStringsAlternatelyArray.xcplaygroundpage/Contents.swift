class MergeStringsAlternatelyArray {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var mergedString = ""

        var arr1 = Array(word1)
        var arr2 = Array(word2)

        for i in 0..<max(arr1.count, arr2.count) {
            if i < arr1.count {
                mergedString.append(arr1[i])
            }
            if i < arr2.count {
                mergedString.append(arr2[i])
            }
        }
        return mergedString
    }
}
