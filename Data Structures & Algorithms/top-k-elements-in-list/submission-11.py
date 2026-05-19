class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        freq = {}
        for num in nums:
            freq[num] = 1 + freq.get(num, 0)
        
        count = [[] for i in range(len(nums) + 1)]
        
        for key, value in freq.items():
            count[value].append(key)

        output = []
        for i in range(len(count) - 1, 0, -1):
            for num in count[i]:
                output.append(num)
                if len(output) == k:
                    return output