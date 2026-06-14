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
import DequeModule
class Solution {
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if subRoot == nil {
            return true
        }
        if root == nil {
            return false
        }

        if isSameTree(root, subRoot) {
            return true
        }

        return (isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot))

        func isSameTree(_ tree: TreeNode?, _ subroot: TreeNode?) -> Bool {
            if tree == nil && subroot == nil {
                return true
            }
            if tree == nil || subroot == nil || tree?.val != subroot?.val {
                return false
            }
            return (isSameTree(tree?.left, subroot?.left) && isSameTree(tree?.right, subroot?.right))
            
        }
        return false
    }
}
