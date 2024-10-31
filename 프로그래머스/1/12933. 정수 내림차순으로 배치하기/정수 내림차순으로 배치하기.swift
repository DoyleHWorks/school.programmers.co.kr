func solution(_ n: Int64) -> Int64? {
    guard (1...8000000000).contains(n) else {
        print("입력값은 1 이상 8,000,000,000 이하인 자연수이어야 합니다.")
        return nil
    }

    let sortedString = String(n)
        .sorted(by: >)
        .reduce("") { $0 + String($1) }

    return Int64(sortedString)
}