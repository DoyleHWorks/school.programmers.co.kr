import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int? {
    guard (-50000...50000).contains(num1), (-50000...50000).contains(num2) else {
        print("-50,000 ≤ num1 ≤ 50,000 그리고 -50,000 ≤ num2 ≤ 50,000이어야 합니다.")
        return nil
    }
    return num1 + num2
}