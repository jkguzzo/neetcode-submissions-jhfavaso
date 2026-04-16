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
    func reorderList(_ head: ListNode?) {
        var slow = head
        var fast = head
        // find mid point of list
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var second = slow?.next
        var prev: ListNode? = nil
        slow?.next = nil

        while second != nil {
            var temp = second?.next
            second?.next = prev
            prev = second
            second = temp
        }

        var first = head
        second = prev
        while second != nil {
            var temp1 = first?.next
            var temp2 = second?.next
            first?.next = second
            second?.next = temp1
            first = temp1
            second = temp2
        }
    }
}




