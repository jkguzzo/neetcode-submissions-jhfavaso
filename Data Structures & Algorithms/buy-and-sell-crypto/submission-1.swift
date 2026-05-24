class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minSeen = prices[0]
        var maxProfit = 0
        for i in 1..<prices.count {
            maxProfit = max(maxProfit, prices[i] - minSeen)
            minSeen = min(prices[i], minSeen)
        }
        return maxProfit
    }
}
