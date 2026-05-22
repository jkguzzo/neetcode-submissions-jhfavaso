class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var sArray = Array(s)
        var l = 0
        var r = s.count - 1
        while l < r {
            while l < r && !((sArray[l].isLetter) || (sArray[l].isNumber)) {
                l += 1
            }
            while r > l && !((sArray[r].isLetter) || (sArray[r].isNumber)) {
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
