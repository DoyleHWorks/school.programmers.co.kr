import Foundation

func solution(_ num1: Int, _ num2: Int) -> Int? {
    guard num1 > 0, num1 <= 100, num2 > 0 , num2 <= 100 else {
        print("0 < num1 ≤ 100 그리고 0 < num2 ≤ 100이어야 합니다.")
        return nil
    }
    return Int((Double(num1) / Double(num2)) * 1000)
}