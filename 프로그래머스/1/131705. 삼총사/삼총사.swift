import Foundation

func solution(_ numbers: [Int]) -> Int {
    guard (3...13).contains(numbers.count), numbers.allSatisfy({ (-1000...1000).contains($0) }) else {
        print("3 ≤ 입력값의 길이 ≤ 13, -1,000 ≤ 입력값의 각 원소 ≤ 1,000 이어야 합니다.")
        return -1
    }
    
    var possibleCaseCount = 0
    
    for indexA in numbers.startIndex...numbers.endIndex {
        if indexA + 3 <= numbers.count {
            let numberA = numbers[indexA]
            for indexB in (indexA + 1)...numbers.endIndex {
                if indexB + 2 <= numbers.count {
                    let numberB = numbers[indexB]
                    for indexC in (indexB + 1)...numbers.endIndex {
                        if indexC + 1 <= numbers.count {
                            let numberC = numbers[indexC]
                            if numberA + numberB + numberC == 0 {
                                possibleCaseCount += 1
                            }
                        }
                    }
                }
            }
        }
    }
    
    return possibleCaseCount
}