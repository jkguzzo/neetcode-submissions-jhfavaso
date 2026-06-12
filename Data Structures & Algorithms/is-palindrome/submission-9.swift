class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let sArray = Array(s)
        var l = 0
        var r = sArray.count - 1

        while l < r {
            while l < r && !sArray[l].isAlphaNum() {
                l += 1
            }
            while r > l && !sArray[r].isAlphaNum() {
                r -= 1
            }
            if sArray[l].lowercased() != sArray[r].lowercased() {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
}

extension Character {
    func isAlphaNum() -> Bool {
        return self.isLetter || self.isNumber
    }
}