class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        res = {}
        index = 0
        for i in nums:
            if target - i in res:
                return [res[target - i], index]
            res[i] = index
            index = index + 1