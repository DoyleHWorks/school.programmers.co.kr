import Foundation

func solution(_ left: Int, _ right: Int) -> Int? {
    guard left >= 1 && left <= right && right <= 1000 else {
        print("1 ≤ left ≤ right ≤ 1,000이어야 합니다.")
        return nil
    }
    
    // 소인수분해를 하고 각 소수의 지수에 1을 더한 뒤 모두 곱하면 숫자의 약수의 개수
    // 하지만 소인수분해만으로도 이미 코드가 복잡해짐. 더 좋은 방법이 없을까?
    // 약수의 개수는 제곱수일 때 홀수이고, 그 외의 경우에는 약수의 개수가 짝수이다.
    
    func isPerfectSquare(_ number: Int) -> Bool {
        sqrt(Double(number)).truncatingRemainder(dividingBy: 1) == 0
    }
    
    var sumWithConditions = 0
    
    for i in left...right{
        if isPerfectSquare(i) {
            sumWithConditions -= i
        } else {
            sumWithConditions += i
        }
    }
    
    return sumWithConditions
}