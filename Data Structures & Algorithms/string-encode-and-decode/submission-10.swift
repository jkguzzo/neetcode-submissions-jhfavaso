class Solution {

    func encode(_ strs: [String]) -> String {
        var encoded_str = ""
        for s in strs {
            encoded_str += String(s.count) + "#" + s
        }
        return encoded_str
    }

    func decode(_ str: String) -> [String] {
        var decoded_strings = [String]()
        let s = Array(str)
        var i = 0
        // "5#Hello5#World"
        while i < s.count {
            var j = i
            while s[j] != "#" {
                j += 1
            }
            let length = Int(String(s[i..<j]))!
            i = j + 1
            j = i + length
            decoded_strings.append(String(s[i..<j]))
            i = j
        }
        return decoded_strings
    }
}
