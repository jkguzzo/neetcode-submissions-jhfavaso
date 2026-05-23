class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        for num in nums {
            count[num, default: 0] += 1
        }

        var freq = [[Int]](repeating: [], count: nums.count + 1)
        for (num, count) in count {
            freq[count].append(num)
        }
        
        var res = [Int]()
        for i in stride(from: freq.count - 1, to: -1, by: -1) {
            for num in freq[i] {
                res.append(num)
                if res.count == k {
                    return res
                }
            }
        }
        return res
    }
}
