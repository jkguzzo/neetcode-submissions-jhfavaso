class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        res_s = sorted(s)
        res_t = sorted(t)
        return res_s == res_t