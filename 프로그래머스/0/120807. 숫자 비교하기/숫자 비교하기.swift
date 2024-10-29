import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int? {
    guard (0...10000).contains(num1), (0...10000).contains(num2) else {
        print("0 ≤ num1 ≤ 10,000 그리고 0 ≤ num2 ≤ 10,000이어야 합니다.")
        return nil
    }
    return num1 == num2 ? 1 : -1
}