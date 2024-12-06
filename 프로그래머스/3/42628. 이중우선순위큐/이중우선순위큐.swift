import Foundation

struct MinMaxHeap {
    private var elements: [Int] = []
    
    var isEmpty: Bool {
        return elements.isEmpty
    }
    
    var max: Int? {
        return elements.max()
    }
    
    var min: Int? {
        return elements.min()
    }
    
    mutating func insert(_ value: Int) {
        elements.append(value)
        elements.sort()
    }
    
    mutating func deleteMax() {
        if let maxIndex = elements.indices.max(by: { elements[$0] < elements[$1] }) {
            elements.remove(at: maxIndex)
        }
    }
    
    mutating func deleteMin() {
        if let minIndex = elements.indices.min(by: { elements[$0] < elements[$1] }) {
            elements.remove(at: minIndex)
        }
    }
}

// Solution Function
func solution(_ operations: [String]) -> [Int] {
    var heap = MinMaxHeap()
    
    for operation in operations {
        let components = operation.split(separator: " ")
        let command = components[0]
        let value = Int(components[1])!
        
        if command == "I" {
            heap.insert(value)
        } else if command == "D" {
            if value == 1 {
                heap.deleteMax()
            } else if value == -1 {
                heap.deleteMin()
            }
        }
    }
    
    if heap.isEmpty {
        return [0, 0]
    } else {
        return [heap.max ?? 0, heap.min ?? 0]
    }
}
