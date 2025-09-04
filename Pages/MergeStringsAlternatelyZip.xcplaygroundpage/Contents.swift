class MergeStringsAlternatelyZip {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result = ""

        for (char1, char2) in zip(word1, word2) {
            result += [char1, char2]
        }

        if word1.count > word2.count {
            result += word1[word2.endIndex...]
        } else {
            result += word2[word1.endIndex...]
        }
        return result
    }
}
