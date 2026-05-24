class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0
        var r = heights.count - 1

        var maxHeight = 0

        while l < r {
            let height = min(heights[l], heights[r]) * (r - l)
            maxHeight = max(maxHeight, height)
            if heights[l] < heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return maxHeight
    }
}
