func solution(_ a: Int, _ b: Int) -> Int64? {
    guard (-10000000...10000000).contains(a), (-10000000...10000000).contains(b) else {
        print("입력값은 둘 다 -10,000,000 이상 10,000,000 이하인 정수이어야 합니다.")
        return nil
    }
    
    let minVal = min(a, b)
    let maxVal = max(a, b)
    
    // 가우스의 덧셈 공식
    let sumOfRange = (maxVal * (maxVal + 1)) / 2 - ((minVal - 1) * minVal) / 2
    return Int64(sumOfRange)
}