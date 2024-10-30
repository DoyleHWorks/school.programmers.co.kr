import Foundation

func solution(_ n:Int) -> Int? {
    guard (1...100000000).contains(n) else {
        print("(입력값)의 범위 : 100,000,000 이하의 자연수이어야 합니다.")
        return nil
    }
    // let digits = String(n).map { Int(String($0))! }
    // return digits.reduce(0, +)
    var answer = 0
    var num = n
    while num > 0 {
        answer += num % 10
        num = num / 10
    }
    return answer
}
