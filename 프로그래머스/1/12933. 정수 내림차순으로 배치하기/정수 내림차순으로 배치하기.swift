func solution(_ n: Int64) -> Int64? {
    guard (1...8000000000).contains(n) else {
        print("입력값은 1 이상 8,000,000,000 이하인 자연수이어야 합니다.")
        return nil
    }

    let digits = String(n).map {Int(String($0))!}
    let sortedDigits = digits.sorted(by: >)
    let result = Int64(sortedDigits.map { String($0) }.joined())

    return result
}