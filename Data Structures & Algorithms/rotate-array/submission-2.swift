class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        var k = k % n

        func reverse(_ start: Int, _ end: Int) {
            var start = start
            var end = end
            while start < end {
                let temp = nums[start]
                nums[start] = nums[end]
                nums[end] = temp
                start += 1
                end -= 1
            }
        }
        reverse(0, n - 1)
        reverse(0, k - 1)
        reverse(k, n - 1)
    }
}
