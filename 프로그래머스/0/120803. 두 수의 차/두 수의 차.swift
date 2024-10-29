import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int? {
    guard num1 <= 50000, num1 >= -50000, num2 <= 50000, num2 >= -50000 else {
        print("-50000 ≤ num1 ≤ 50000 그리고 -50000 ≤ num2 ≤ 50000이어야 합니다.")
        return nil
    }
    return num1 - num2
}