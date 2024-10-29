import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int? {
    guard (0...100).contains(num1), (0...100).contains(num2) else {
        print("0 ≤ num1 ≤ 100 그리고 0 ≤ num2 ≤ 100이어야 합니다.")
        return nil
    }
    return num1 * num2
}