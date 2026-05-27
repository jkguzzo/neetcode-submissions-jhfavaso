class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for c in tokens {
            switch c {
            case "+":
                stack.append(stack.removeLast() + stack.removeLast())
            case "-":
                let a = stack.removeLast()
                let b = stack.removeLast()
                stack.append(b - a)
            case "*":
                stack.append(stack.removeLast() * stack.removeLast())
            case "/":
                let a = stack.removeLast()
                let b = stack.removeLast()
                stack.append(b / a)
            default:
                stack.append(Int(c) ?? 0)
            }
        }
        return stack.last ?? 0
    }
}
