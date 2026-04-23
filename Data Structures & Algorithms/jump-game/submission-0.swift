class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var maxReach = 0

        for i in 0..<nums.count {
            if i > maxReach {
                return false
            }
            maxReach = max(nums[i] + i, maxReach)
            if maxReach >= nums.count - 1 { 
                return true 
            }
        }
        return true
    }
}
