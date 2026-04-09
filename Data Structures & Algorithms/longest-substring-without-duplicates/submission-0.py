class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        index = {}
        l = 0
        res = 0

        for r in range(len(s)):
            if s[r] in index:
                l = max(index[s[r]] + 1, l)
            index[s[r]] = r
            res = max(res, r - l + 1)
        return res