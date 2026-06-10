class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var count = [Int: Int]()
        for num in nums {
            count[num, default: 0] += 1
        }

        var freq = [[Int]]()
        for _ in 0...nums.count {
            freq.append([])
        }

        for (num, count) in count {
            freq[count].append(num)
        }

        var res = [Int]()
        for i in stride(from: freq.count - 1, to: -1, by: -1) {
            for c in freq[i] {
                res.append(c)
            }
            if res.count == k {
                return res
            }
        }
        return res
    }
}
