class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        for (i, num) in nums.enumerated() {
            let diff = target - num
            if let index = seen[diff] {
                return [index, i]
            }
            seen[num] = i
        }
        
        return []
    }
}
