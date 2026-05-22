class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // rows
        for row in 0..<9 {
            var seen = Set<Character>()
            for col in 0..<9 {
                if board[row][col] == "." {
                    continue
                }
                if seen.contains(board[row][col]) {
                    return false
                }
                seen.insert(board[row][col])
            }
        }
        // cols
        for col in 0..<9 {
            var seen = Set<Character>()
            for row in 0..<9 {
                if board[row][col] == "." {
                    continue
                }
                if seen.contains(board[row][col]) {
                    return false
                }
                seen.insert(board[row][col])
            }
        }
        // square
        for square in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<3 {
                for j in 0..<3 {
                    let row = (square / 3) * 3 + i
                    let col = (square % 3) * 3 + j
                    if board[row][col] == "." {
                        continue
                    }
                    if seen.contains(board[row][col]) {
                        return false
                    }
                    seen.insert(board[row][col])
                }
            }
        }
        return true
    }
}
