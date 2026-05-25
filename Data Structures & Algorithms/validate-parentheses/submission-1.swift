class Solution {
    func isValid(_ s: String) -> Bool {
        let closeToOpen: [Character: Character] = ["}": "{", ")": "(", "]": "["]
        let sArray = Array(s)
        var stack = [Character]()
        for c in sArray {
            if let open = closeToOpen[c] {
                if stack.last == open {
                    stack.popLast()
                } else  {
                    return false
                }
            } else {
                stack.append(c)
            }
        }
        return stack.isEmpty
    }
}
