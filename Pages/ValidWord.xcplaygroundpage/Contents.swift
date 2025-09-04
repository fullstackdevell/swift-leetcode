class ValidWord {
    func isValid(_ word: String) -> Bool {

        if word.count >= 3 && word.allSatisfy({ $0.isLetter || $0.isNumber }) && word.contains(where: { "aeiouAEIOU".contains($0) }) && word.contains(where: { "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".contains($0) }) {
            return true
        } else {
            return false
        }
    }
}
