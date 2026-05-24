class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var l = 0
        var res = 0
        var visited = [Character: Int]()
        let sArray = Array(s)

        for r in 0..<s.count {
            if let index = visited[sArray[r]] {
                l = max(index + 1, l)
            }
            visited[sArray[r]] = r
            res = max(res, r - l + 1)
        }
        return res
    }
}
