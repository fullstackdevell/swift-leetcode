class GreatestCommonDivisorOfStrings {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }

        let length1 = str1.count
        let length2 = str2.count
        for l in (1...min(length1, length2)).reversed() {
            let possibleX = str1.prefix(l)

            if length1 % l == 0 && length2 % l == 0 {
                let rep1 = length1 / l
                let rep2 = length2 / l
                let s1 = String(repeating: String(possibleX), count: rep1)
                let s2 = String(repeating: String(possibleX), count: rep2)
                if s1 == str1 && s2 == str2 {
                    return String(possibleX)
                }
            }
        }
        return ""
    }
}
