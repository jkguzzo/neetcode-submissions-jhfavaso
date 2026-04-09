class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        # initialize empty set to hold each item in nums
        result = set()
        # iterate over nums 
        for i in nums:
            # if i is already in the set, that means it's a duplicate, so return True
            if i in result:
                return True
            # if i is not already in the set, add it
            result.add(i)
        # return False if we finish iterating through nums without returning True
        return False