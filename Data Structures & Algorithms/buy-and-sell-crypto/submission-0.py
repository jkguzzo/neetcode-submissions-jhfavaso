class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        minimum = prices[0]
        result = 0
        for i in prices:
            result = max(result, i - minimum)
            minimum = min(minimum, i)
        return result