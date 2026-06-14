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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var q: Deque = [root]
        var res = [[Int]]()

        while !q.isEmpty {
            var level = [Int]()
            for _ in 0..<q.count {
                let node = q.removeFirst()
                level.append(node.val)
                if let left = node.left {
                    q.append(left)
                }
                if let right = node.right {
                    q.append(right)
                }
            }
            res.append(level)
        }
        return res
    }
}
