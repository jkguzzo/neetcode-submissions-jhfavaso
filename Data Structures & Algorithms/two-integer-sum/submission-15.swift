class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()

        for (i, a) in nums.enumerated() {
            let diff = target - a
            if let index = seen[diff] {
                return [index, i]
            }
            seen[a] = i
        }
        return []
    }
}
