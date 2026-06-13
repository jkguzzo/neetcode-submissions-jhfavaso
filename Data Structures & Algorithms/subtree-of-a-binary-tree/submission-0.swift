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
        if root == nil && subRoot == nil {
            return true
        }
        
        guard let root = root else { return false }
        guard let subRoot = subRoot else { return false }
        
        var q: Deque = [root]

        func isSameTree(_ tree: TreeNode?, _ subroot: TreeNode?) -> Bool {
            if tree == nil && subroot == nil {
                return true
            }
            if tree == nil || subroot == nil || tree?.val != subroot?.val {
                return false
            }
            return (isSameTree(tree?.left, subroot?.left) && isSameTree(tree?.right, subroot?.right))
            
        }
        while !q.isEmpty {
            let node = q.removeFirst()
            if node.val == subRoot.val {
                let found = isSameTree(node, subRoot)
                if found {
                    return true
                }
            }
            if let left = node.left {
                    q.append(left)
                }
            if let right = node.right {
                q.append(right)
            }
        }
        return false
    }
}
