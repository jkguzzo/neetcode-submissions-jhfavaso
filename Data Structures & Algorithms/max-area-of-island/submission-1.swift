class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
        let ROWS = grid.count
        let COLS = grid[0].count
        var grid = grid
        var maxArea = 0
        var current = 0

        func dfs(_ r: Int, _ c: Int) {
            if r < 0 || c < 0 || r >= ROWS || c >= COLS || grid[r][c] == 0 {
                return
            }

            grid[r][c] = 0

            for dir in directions {
                dfs(r + dir[0], c + dir[1])  
            }
            
            current += 1
            maxArea = max(maxArea, current)
        }

        for r in 0..<ROWS {
            for c in 0..<COLS {
                if grid[r][c] == 1 {
                    dfs(r, c)
                    current = 0
                }
            }
        }

        return maxArea
    }
}
