/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var curr = dummy
        var l1 = l1
        var l2 = l2
        var carry = 0

        while l1 != nil || l2 != nil || carry != 0 {
            let v1 = l1?.val ?? 0
            let v2 = l2?.val ?? 0

            let sum = v1 + v2 + carry
            carry = sum / 10
            let val = sum % 10
            curr.next = ListNode(val)

            curr = curr.next!
            l1 = l1?.next
            l2 = l2?.next 
        }

        return dummy.next
    }
}
