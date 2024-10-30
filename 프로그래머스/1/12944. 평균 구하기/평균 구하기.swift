func solution(_ arr:[Int]) -> Double? {
    guard (1...100).contains(arr.count) else {
        print("(입력값)은 길이 1 이상, 100 이하인 배열이어야 합니다.")
        return nil
    }
    guard arr.min()! >= -10000, arr.max()! <= 10000 else {
        print("(입력값)의 원소는 -10,000 이상 10,000 이하인 정수이어야 합니다.")
        return nil
    }
    return Double(arr.reduce(0, +)) / Double(arr.count)
}