class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
        let ROWS = grid.count
        let COLS = grid[0].count
        var islands = 0
        var grid = grid

        func dfs(_ r: Int, _ c: Int) {
            if r < 0 || c < 0 || r >= ROWS || c >= COLS || grid[r][c] == "0" {
                return
            }

            grid[r][c] = "0"

            for dir in directions {
                dfs(r + dir[0], c + dir[1])
            }
        }

        for r in 0..<ROWS {
            for c in 0..<COLS {
                if grid[r][c] == "1" {
                    dfs(r, c)
                    islands += 1
                }
            }
        }
        
        return islands
    }
}
