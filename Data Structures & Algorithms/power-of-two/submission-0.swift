class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        if n <= 0 || n % 2 == 1 {
            return false
        }
        return isPowerOfTwo(n / 2)
    }
}
