class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [(Int, Int)]()
        var result = [Int](repeating: 0, count: temperatures.count)

        for (i, t) in temperatures.enumerated() {
            while !stack.isEmpty && t > stack.last!.0 {
                let (stackT, stackInd) = stack.removeLast()
                result[stackInd] = i - stackInd
            }
            stack.append((t, i))
        }
        return result
    }
}
