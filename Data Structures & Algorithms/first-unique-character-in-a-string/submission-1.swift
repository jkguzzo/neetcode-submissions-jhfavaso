class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let sArray = Array(s)
        var result = [Int](repeating: 1, count: sArray.count)
        var firstSeen = [Character: Int]()

        for i in 0..<sArray.count {
            if let index = firstSeen[sArray[i]] {
                result[i] = 0
                result[index] = 0
            } else {
                firstSeen[sArray[i]] = i
            }
        }
        return result.firstIndex(of: 1) ?? -1
    }
}
