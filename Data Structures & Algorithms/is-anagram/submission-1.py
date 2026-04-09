class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t):
            return False
        resS = {}
        resT = {}

        for i in range(len(s)):
            resS[s[i]] = 1 + resS.get(s[i], 0)
            resT[t[i]] = 1 + resT.get(t[i], 0)

        return resS == resT