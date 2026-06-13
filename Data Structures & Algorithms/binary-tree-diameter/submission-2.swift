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

        func dfs(_ root: TreeNode?, res: inout Int) -> Int {
            guard let root = root else { return 0 }

            var left = dfs(root.left, res: &res)
            var right = dfs(root.right, res: &res)
            
            res = max(res, left + right)
            return 1 + max(left, right)
        }

        dfs(root, res: &res)
        return res
    }
}










