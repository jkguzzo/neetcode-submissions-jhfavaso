class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # hashmap holding each value and index of nums
        seen = {}

        # enumerate function iterates over array and returns index and value of each item
        for i, n in enumerate(nums):
            # calculate the value we are looking for
            diff = target - n
            # check if we've already seen the value we are looking for
            if diff in seen:
                # return the index diff was found at and the index we are currently at in the array
                return [seen[diff], i]
            # otherwise, add n to seen and set its value to i, which represents the index of n
            seen[n] = i
