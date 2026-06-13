/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var res = 0

        func dfs(_ root: TreeNode?) -> Int {
            guard let root = root else { return 0 }

            var left = dfs(root.left)
            var right = dfs(root.right)
            
            res = max(res, left + right)
            return 1 + max(left, right)
        }

        dfs(root)
        return res
    }
}










