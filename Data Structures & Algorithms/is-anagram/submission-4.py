class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        # if they're not the same length, they can't be valid anagrams of each other
        # so we can return False
        if len(s) != len(t):
            return False
        # otherwise, initialize empty hashmaps to hold the frequency of each letter
        res_s = {}
        res_t = {}
        # iterate over the strings
        # we can safely use the length of s because we know the strings are the same length
        for i in range(len(s)):
            # for each character in s and t, add 1 to that letter's frequency count
            # res_s[s[i], 0] -> gives default value of 0 if res_s[s[i]] has not yet been set
            res_s[s[i]] = 1 + res_s.get(s[i], 0)
            res_t[t[i]] = 1 + res_t.get(t[i], 0)
        # return True if the hashmaps are the same, False otherwise
        return res_s == res_t