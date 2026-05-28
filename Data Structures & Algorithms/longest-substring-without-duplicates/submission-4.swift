class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastIndex = [Character: Int]()
        var l = 0
        var res = 0
        let sArray = Array(s)
        for r in 0..<sArray.count {
            if let index = lastIndex[sArray[r]] {
                l = max(index + 1, l)
            }
            lastIndex[sArray[r]] = r
            res = max(res, r - l + 1)
        }
        return res
    }
}
