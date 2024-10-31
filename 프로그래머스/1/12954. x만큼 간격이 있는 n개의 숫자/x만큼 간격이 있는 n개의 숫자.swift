func solution(_ x: Int, _ n: Int) -> [Int64]? {
    guard (-10000000...10000000).contains(x), (1...1000).contains(n) else {
        print("(입력값1)은 -10000000 이상, 10000000 이하인 정수이고, (입력값2)는 1000 이하인 자연수이어야 합니다.")
        return nil
    }
    
    var numbers = [Int64]()
    var currentNumber = Int64(x)
    
    for _ in 1...n {
        numbers.append(currentNumber)
        currentNumber += Int64(x)
    }
    
    return numbers
}