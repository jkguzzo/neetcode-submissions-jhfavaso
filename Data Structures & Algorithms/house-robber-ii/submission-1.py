class Solution:
    def rob(self, nums: List[int]) -> int:

        def robber1(nums: List[int]) -> int:
            rob1 = 0 # this one is the one that definitely stopped on the first one im pretty sure
            rob2 = 0

            for n in nums:
                temp = max(rob1 + n, rob2)
                rob1 = rob2
                rob2 = temp
            return rob2
        
        n = len(nums)
        return max(nums[0], robber1(nums[1:]), robber1(nums[:-1]))