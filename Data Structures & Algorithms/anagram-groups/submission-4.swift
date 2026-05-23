class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result = [[Int]: [String]]()
        for s in strs {
            var count = [Int](repeating: 0, count: 26)
            for c in s {
                count[Int(c.asciiValue!) - 97] += 1
            }
            result[count, default: []].append(s)
        }
        return Array(result.values)
    }
}
