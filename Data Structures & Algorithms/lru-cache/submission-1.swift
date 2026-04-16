class LRUCache {

    private var capacity: Int
    private var cache = [Int: Int]()
    private var keyOrder: [Int] = []

    init(_ capacity: Int) {
        self.capacity = capacity
    }

    func get(_ key: Int) -> Int {
        if let value = cache[key] {
            if let index = keyOrder.firstIndex(of: key) {
                keyOrder.remove(at: index)
            }
            keyOrder.append(key)
            return value
        }
        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if cache[key] != nil {
            if let index = keyOrder.firstIndex(of: key) {
                keyOrder.remove(at: index)
            }
        } else if cache.count >= capacity {
            if let lruKey = keyOrder.first {
                cache.removeValue(forKey: lruKey)
                keyOrder.removeFirst()
            }
        }

        cache[key] = value
        keyOrder.append(key)
    }
}





