class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        # keep length variable inside loop and use that to check something
        # check if something? is num - 1
        # while num - 1 in set maybe?
        numSet = set(nums)
        maxLength = 0
        for num in nums:
            length = 1
            while num - length in numSet:
                length += 1
            maxLength = max(length, maxLength)
        return maxLength
