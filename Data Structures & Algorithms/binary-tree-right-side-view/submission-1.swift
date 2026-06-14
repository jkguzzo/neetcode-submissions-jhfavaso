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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var res = [Int]()
        var q: Deque = [root]

        while !q.isEmpty {
            var rightSide: TreeNode?
            //var level = [Int]()
            for _ in 0..<q.count {
                let node = q.removeFirst()
                rightSide = node
                //level.append(node.val)
                if let left = node.left {
                    q.append(left)
                }
                if let right = node.right {
                    q.append(right)
                }
            }
            if let rightSide = rightSide {
                res.append(rightSide.val)
            }
        }
        return res
    }
}





