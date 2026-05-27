class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var count = [Character: Int]()
        var l = 0
        var res = 0
        let sArray = Array(s)
        for r in 0..<sArray.count {
            count[sArray[r], default: 0] += 1
            while (r - l + 1) - (count.values.max() ?? 0) > k {
                count[sArray[l], default: 0] -= 1
                l += 1
            }
            res = max(res, r - l + 1)
        }
        return res
    }
}
