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
    func goodNodes(_ root: TreeNode?) -> Int {

        func dfs(_ root: TreeNode?, _ maxVal: Int) -> Int {
            guard let root = root else { return 0 }

            var res = 0
            if root.val >= maxVal {
                res = 1
            }
            let newMax = max(maxVal, root.val)
            res += dfs(root.left, newMax)
            res += dfs(root.right, newMax)
            return res
        }
        return dfs(root, root?.val ?? Int.min)
    }
}
