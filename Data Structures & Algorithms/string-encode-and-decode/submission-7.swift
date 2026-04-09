class Solution {

    func encode(_ strs: [String]) -> String {
        var encoded_string = ""
        for s in strs {
            encoded_string += String(s.count) + "#" + s
        }
        print(encoded_string)
        return encoded_string
    }

    func decode(_ str: String) -> [String] {
        var decoded = [String]()
        let sArray = Array(str)
        var i = 0

        while i < sArray.count {
            var j = i
            while sArray[j] != "#" {
                j += 1
            }
            let strLength = String(sArray[i..<j])
            let length = Int(strLength)!
            i = j + 1
            j = i + length
            decoded.append(String(sArray[i..<j]))
            i = j
        }

        return decoded
    }
}
