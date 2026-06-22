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
    func isValidBST(_ root: TreeNode?) -> Bool {

        func dfs(_ root: TreeNode?, _ left: Int, _ right: Int) -> Bool {
            guard let root = root else { return true }

            if !(root.val > left && root.val < right) {
                return false
            }

            return dfs(root.left, left, root.val) && dfs(root.right, root.val, right)
        }
        return dfs(root, Int.min, Int.max)
    }
}
