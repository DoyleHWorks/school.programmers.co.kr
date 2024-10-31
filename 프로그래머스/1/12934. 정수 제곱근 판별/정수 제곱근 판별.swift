import Foundation

func solution(_ n: Int64) -> Int64? {
    guard (1...50000000000000).contains(n) else { // Int64인 입력값의 범위가 Double로 변환했을 때 안전한지 확인
        print("입력값은 1 이상, 50,000,000,000,000 이하인 양의 정수이어야 합니다.")
        return nil
    }
    
    let root = sqrt(Double(n))
    if root.truncatingRemainder(dividingBy: 1) == 0 {
        let nextSquare = Int64(pow(root + 1, 2))
        return nextSquare
    } 
    
    return -1
}