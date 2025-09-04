class MergeStringsAlternately {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var mergedString = ""

        var pointer1 = word1.startIndex
        var pointer2 = word2.startIndex

        while pointer1 < word1.endIndex || pointer2 < word2.endIndex {
            if pointer1 < word1.endIndex {
                mergedString.append(word1[pointer1])
                pointer1 = word1.index(after: pointer1)
            }
            if pointer2 < word2.endIndex {
                mergedString.append(word2[pointer2])
                pointer2 = word2.index(after: pointer2)
            }
        }
        return mergedString
    }
}
