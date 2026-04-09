class Solution:
    def maxAreaOfIsland(self, grid: List[List[int]]) -> int:
        directions = [[1,0], [-1,0], [0,1], [0,-1]]
        ROWS = len(grid)
        COLS = len(grid[0])
        maxArea = 0

        def dfs(r, c):
            if (r < 0 or c < 0 or r >= ROWS or c >= COLS or grid[r][c] == 0):
                return 0

            grid[r][c] = 0  # mark visited
            area = 1

            for dr, dc in directions:
                area += dfs(r + dr, c + dc)

            return area

        for row in range(ROWS):
            for col in range(COLS):
                if grid[row][col] == 1:
                    maxArea = max(maxArea, dfs(row, col))

        return maxArea