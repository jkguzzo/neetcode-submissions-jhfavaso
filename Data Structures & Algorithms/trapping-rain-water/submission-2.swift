class Solution {
    func trap(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count - 1
        var leftMax = height[l]
        var rightMax = height[r]
        var result = 0
        while l < r {
            if leftMax < rightMax {
                l += 1
                leftMax = max(leftMax, height[l])
                result += leftMax - height[l]
            } else {
                r -= 1
                rightMax = max(rightMax, height[r])
                result += rightMax - height[r]
            }
        }
        return result
    }
}
