func solution(_ num: Int) -> Int? {
    guard (1..<8000000).contains(num) else {
        print("입력값은 1 이상 8,000,000 미만인 정수이어야 합니다.")
        return nil
    }
    
    if num == 1 { return 0 }
    
    var value = num
    
    for i in 1...500 {
        value = (value & 1 == 0) ? (value >> 1) : (value * 3 + 1)
        
        if value == 1 { return i }
    }
    
    return -1
}