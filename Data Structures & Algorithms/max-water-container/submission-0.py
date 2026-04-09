class Solution:
    def maxArea(self, heights: List[int]) -> int:
        maximum = 0
        i = 0
        while i < len(heights) - 1:
            j = i + 1
            while j < len(heights):
                volume = min(heights[i], heights[j]) * (j - i)
                maximum = max(maximum, volume)
                j += 1
            i += 1
        return maximum