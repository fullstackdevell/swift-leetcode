class GreatestCommonDivisorOfStringsEuclideanAlgorithm {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }

        let len1 = str1.count
        let len2 = str2.count

        let gcdLength = gcd(len1, len2)
        let possibleD = str1.prefix(gcdLength)
        
        return String(possibleD)
    }
        func gcd (_ a: Int, _ b: Int) -> Int {
            var a = a
            var b = b
            while b != 0 {
                let temp = b
                b = a % b
                a = temp
        }
        return a
    }
}
