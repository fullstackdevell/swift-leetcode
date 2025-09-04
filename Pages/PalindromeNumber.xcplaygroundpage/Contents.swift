class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        let originalNumber = x
        var tempNumber = x
        var reversedNumber = 0
        while tempNumber > 0 {
            let lastDigit = tempNumber % 10
            reversedNumber = (reversedNumber * 10) + lastDigit
            tempNumber /= 10
        }
        if reversedNumber == originalNumber {
            return true
        } else {
            return false
        }
    }
}
