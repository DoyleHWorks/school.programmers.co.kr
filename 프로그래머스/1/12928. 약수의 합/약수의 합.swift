import Foundation

func solution(_ n:Int) -> Int? {
    guard (0...3000).contains(n) else {
        print("(입력값)은 0 이상 3000 이하인 정수이어야 합니다.")
        return nil
    }
    if n == 0 { return 0 }; if n == 1 { return 1 }
    
    let sqrtInt = Int(sqrt(Double(n)))
    var nFactors = Set<Int>()
    
    for i in 1...sqrtInt {
        if n % i == 0 {
            nFactors.insert(i)
            nFactors.insert(n / i)
        }
    }
    
    let sumOfFactors = nFactors.reduce(0, +)
    return sumOfFactors
}