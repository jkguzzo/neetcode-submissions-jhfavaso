class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num
            if seen.keys.contains(diff) {
                if let val = seen[diff] {
                    return [val, index]
                }
            }
            seen[num] = index
        }

        return []
    }
}
