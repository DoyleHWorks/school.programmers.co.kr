import Foundation

func solution(_ numbers: [Int]) -> Int? {
    guard (1...9).contains(numbers.count) && numbers.allSatisfy({ (0...9).contains($0) }) && numbers.count == Set(numbers).count else {
        print("1 ≤ (입력값의 길이) ≤ 9이고, 0 ≤ (입력값의 모든 원소) ≤ 9이며, 입력값의 모든 원소는 서로 달라야 합니다.")
        return nil
    }
    // 0부터 9까지의 총합은 45
    let sumOfMissingDigits = 45 - numbers.reduce(0, +)
    return sumOfMissingDigits
    
    // var missingDigits = Set([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]).subtracting(numbers)
    // let sumOfMissingDigits = missingDigits.reduce(0, +)
    // return sumOfMissingDigits
}