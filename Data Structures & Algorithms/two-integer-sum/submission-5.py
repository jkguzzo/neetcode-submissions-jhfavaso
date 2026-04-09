class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        i = 0

        while i < len(nums):
            for index, value in enumerate(nums):
                if index == i:
                    continue
                if nums[i] + value == target:
                    return [i, index]
            i += 1 