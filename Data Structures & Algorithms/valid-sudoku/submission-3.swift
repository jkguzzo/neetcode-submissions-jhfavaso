class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        // rows
        for r in 0..<9 {
            var seen = Set<Character>()
            for c in 0..<9 {
                if board[r][c] == "." {
                    continue
                }
                if seen.contains(board[r][c]) {
                    return false
                }
                seen.insert(board[r][c])
            }
        }
        for c in 0..<9 {
            var seen = Set<Character>()
            for r in 0..<9 {
                if board[r][c] == "." {
                    continue
                }
                if seen.contains(board[r][c]) {
                    return false
                }
                seen.insert(board[r][c])
            }
        }
        for square in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<3 {
                for j in 0..<3 {
                    let r = (square / 3) * 3 + i
                    let c = (square % 3) * 3 + j
                    if board[r][c] == "." {
                        continue
                    }
                    if seen.contains(board[r][c]) {
                        return false
                    }
                    seen.insert(board[r][c]) 
                }
            }
        }
        return true
    }
}
