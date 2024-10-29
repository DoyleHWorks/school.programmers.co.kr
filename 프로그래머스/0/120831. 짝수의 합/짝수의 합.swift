import Foundation

func solution(_ n:Int) -> Int? {
    guard n > 0, n <= 1000 else {
        print("0 < (입력값) ≤ 1000이어야 합니다.")
        return nil
    }
    
    // 하나씩 더하는 방법
    // var sumOfEvens: Int = 0
    // var currentEven: Int = 2
    // while currentEven <= n {
    //     sumOfEvens += currentEven
    //     currentEven += 2
    // return sumOfEvens
    
    // 등차수열의 합
    let evenCount = n / 2 // 정수 나눗셈에 의해 Int로 타입추론됨
    return evenCount * (evenCount + 1)
}