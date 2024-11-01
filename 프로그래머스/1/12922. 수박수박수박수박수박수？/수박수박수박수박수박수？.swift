func solution(_ n: Int) -> String {
    guard (1...10000).contains(n) else {
        print("입력값은 길이 10,000 이하인 자연수이어야 합니다.")
        return ""
    }

    // Algorithm 1: O(n)
    /*
    var watermelonString = ""
    
    for i in 1...n {
        if !i.isMultiple(of: 2) {
            watermelonString += "수"
        } else {
            watermelonString += "박"
        }
    }
    
    return watermelonString
    */
    
    // Algorithm 2: O(n) but faster
    var watermelonString = String(repeating: "수박", count: n / 2)

    if n % 2 != 0 { 
        watermelonString += "수"
    }
    
    return watermelonString
}