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

        func valid(_ node: TreeNode?, _ left: Int, _ right: Int) -> Bool {
            guard let node = node else { return true }

            if !(node.val < right && node.val > left) {
                return false
            }

            return valid(node.left, left, node.val) && valid(node.right, node.val, right)
        }

        return valid(root, Int.min, Int.max)
    }
}
