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
    func maxDepth(_ root: TreeNode?) -> Int {
        var stack: [(TreeNode?, Int)] = [(root, 0)]
        var res = 0

        while !stack.isEmpty {
            let (node, depth) = stack.removeLast()
            if let node = node {
                stack.append((node.left, depth + 1))
                stack.append((node.right, depth + 1))
                res = max(res, depth + 1)
            }
        }
        return res
    }
}
