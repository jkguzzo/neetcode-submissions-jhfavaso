class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for c in tokens {
            if c == "+" {
                stack.append(stack.removeLast() + stack.removeLast())
            } else if c == "-" {
                let a = stack.removeLast()
                let b = stack.removeLast()
                stack.append(b - a)
            } else if c == "*" {
                stack.append(stack.removeLast() * stack.removeLast())
            } else if c == "/" {
                let a = stack.removeLast()
                let b = stack.removeLast()
                stack.append(b / a)
            } else {
                stack.append(Int(c) ?? 0)
            }
        }
        return stack.last ?? 0
    }
}
