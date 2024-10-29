import Foundation

func solution(_ age:Int) -> Int? {
    guard age > 0, age <= 120 else {
        print("0 < age ≤ 120이어야 합니다.")
        return nil
    }
    let currentYear = 2022
    return currentYear - age + 1
}