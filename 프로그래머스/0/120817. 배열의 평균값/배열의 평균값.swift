import Foundation

func solution(_ numbers:[Int]) -> Double? {
    guard (1...100).contains(numbers.count) else {
        print("1 ≤ (입력값)의 길이 ≤ 100이어야 합니다")
        return nil
    }
    guard numbers.min()! >= 0, numbers.max()! <= 1000 else {
        print("0 ≤ (입력값)의 원소 ≤ 1,000이어야 합니다")
        return nil
    }
    return Double(numbers.reduce(0, +)) / Double(numbers.count)
}