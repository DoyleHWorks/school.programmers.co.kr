func solution(_ x:Int) -> Bool? {
    guard (1...10000).contains(x) else {
        print("입력값은 1 이상, 10000 이하인 정수이어야 합니다.")
        return nil
    }

    let sumOfDigits = String(x)
        .map {Int(String($0))!}
        .reduce(0, +)
    var isHarshad = x % sumOfDigits == 0
    return isHarshad
}