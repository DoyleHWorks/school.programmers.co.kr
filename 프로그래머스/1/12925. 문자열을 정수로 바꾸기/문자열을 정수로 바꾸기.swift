func solution(_ s:String) -> Int? {
    guard (1...5).contains(s.count) else {
        print("(입력값)의 길이는 1 이상 5 이하이어야 합니다.")
        return nil
    }
    
    var numberString = s
    var isPositive: Bool
    
    switch numberString[numberString.startIndex] {
    case "0":
        print("입력값은 \"0\"으로 시작할 수 없습니다.")
        return nil
    case "+": 
        isPositive = true
        numberString.removeFirst()
    case "-": 
        isPositive = false
        numberString.removeFirst()
    default: 
        isPositive = true
    }
    
    var numberInt: Int?
    
    if var intValue = Int(numberString) {
        if isPositive == false {
            intValue.negate()
        }
        numberInt = intValue
    } else {
        print("유효하지 않은 입력값입니다.")
        return nil
    }
    
    return numberInt
}