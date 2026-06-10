class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        let sArray = Array(s)
        let tArray = Array(t)

        var sCount = [Character: Int]()
        var tCount = [Character:Int]()

        for i in 0..<sArray.count {
            sCount[sArray[i], default: 0] += 1
            tCount[tArray[i], default: 0] += 1
        }

        return sCount == tCount
    }
}
