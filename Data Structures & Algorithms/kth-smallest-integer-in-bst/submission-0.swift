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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var res = [Int]()

        func dfs(_ root: TreeNode?) {
            guard let root = root else { return }
            dfs(root.left)
            res.append(root.val)
            dfs(root.right)
        }

        dfs(root)
        return res[k - 1]
    }
}
