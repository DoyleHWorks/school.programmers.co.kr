import Foundation

func solution(_ n: Int) -> Int? {
    guard (3...1000000).contains(n) else {
        print("3 ≤ (입력값) ≤ 1,000,000이어야 합니다.")
        return nil
    }
    
    let target = n - 1
    
    for i in 2...Int(sqrt(Double(target))) {
        if target % i == 0 {
            return i
        }
    }
    
    return target
}