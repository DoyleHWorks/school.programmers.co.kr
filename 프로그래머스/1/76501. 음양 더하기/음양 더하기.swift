import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int? {
    guard (1...1000).contains(absolutes.count) && absolutes.count == signs.count else {
        print("절댓값 배열의 길이는 1 이상 1,000 이하이며, 부호 배열의 길이는 절댓값 배열의 길이와 같아야 합니다.")
        return nil
    }
     
    // 제일 느렸던 방법
    // let sumOfNumbers = zip(absolutes, signs)
    //     .map({$1 ? $0 : -$0})
    //     .reduce(0, +)

    // 두 번째로 빨랐던 방법
    // let numbers = absolutes.enumerated().map({signs[$0] ? $1 : 0 - $1}) 
    // let sumOfNumbers = numbers.reduce(0, +)

    let sumOfNumbers = (0..<absolutes.count).map({ signs[$0] ? absolutes[$0] : -absolutes[$0] }).reduce(0, +)

    return sumOfNumbers
}