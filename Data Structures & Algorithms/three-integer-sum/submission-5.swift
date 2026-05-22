class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var res = [[Int]]()
        for (i, a) in nums.enumerated() {
            if a > 0 {
                break
            }
            if i > 0 && a == nums[i - 1] {
                continue
            }
            var left = i + 1
            var right = nums.count - 1
            while left < right {
                let threeSum = a + nums[left] + nums[right]
                if threeSum > 0 {
                    right -= 1
                } else if threeSum < 0 {
                    left += 1
                } else {
                    res.append([a, nums[left], nums[right]])
                    left += 1
                    right -= 1
                    while left < right && nums[left] == nums[left - 1] {
                        left += 1
                    }
                }
            }
        }
        return res
    }
}
