class Solution {

    func encode(_ strs: [String]) -> String {
        var encoded_str = ""
        for s in strs {
            encoded_str += String(s.count) + "#" + s
        }
        return encoded_str
    }

    func decode(_ str: String) -> [String] {
        var decoded_str = [String]()
        let sArray = Array(str)
        var i = 0
        while i < sArray.count {
            var j = i
            while sArray[j] != "#" {
                j += 1
            }
            let length = Int(String(sArray[i..<j])) ?? 0
            i = j + 1
            j = i + length
            decoded_str.append(String(sArray[i..<j]))
            i = j
        }
        return decoded_str
    }
}
