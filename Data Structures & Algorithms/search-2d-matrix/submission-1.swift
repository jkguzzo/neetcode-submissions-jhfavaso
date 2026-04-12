class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let cols = matrix[0].count

        var left = 0
        var right = rows * cols - 1

        while left <= right {
            let middle = left + (right - left) / 2
            let row = middle / cols
            let col = middle % cols
            if target > matrix[row][col] {
                left = middle + 1
            } else if target < matrix[row][col] {
                right = middle - 1
            } else {
                return true
            }
        }
        return false
    }
}
