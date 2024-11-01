import Foundation

func solution(_ a: [Int], _ b: [Int]) -> Int? {
    guard (1...1000).contains(a.count), (1...1000).contains(b.count), a.count == b.count,
        a.allSatisfy({(-1000...1000).contains($0)}), b.allSatisfy({(-1000...1000).contains($0)})
    else {
        print("입력값의 길이는 1 이상 1,000 이하로 서로 같아야 하며, 모든 요소는 -1,000 이상 1,000 이하이어야 합니다.")
        return nil
    }
    
    // Algorithm 1 O(n, n)
    /*
    let dotProduct = a.enumerated()
        .map({ b[$0] * $1 })
        .reduce(0, +)
    */
    
    // Algorithm 2 O(n, n) but slightly faster and lighter with better clarity
    let dotProduct = zip(a, b)
        .map({ $0 * $1 })
        .reduce(0, +)
    
    return dotProduct
}