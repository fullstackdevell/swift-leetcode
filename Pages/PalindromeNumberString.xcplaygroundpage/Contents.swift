class PalindromeNumberString {
    func isPalindrome(_ x: Int) -> Bool {
        let stringPalindrome = String(x)
        let reversedString = String(stringPalindrome.reversed())
        if stringPalindrome == reversedString {
            return true
        } else {
            return false
        }
    }
}
