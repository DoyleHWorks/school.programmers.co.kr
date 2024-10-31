func solution(_ n: Int64) -> [Int]? {
    guard (1...10000000000).contains(n) else {
        print("(입력값)은 10,000,000,000이하인 자연수이어야 합니다.")
        return nil
    }
    
    let digits = String(n).map { Int(String($0))! }
    let reversedDigits = Array(digits.reversed())
    return reversedDigits
}