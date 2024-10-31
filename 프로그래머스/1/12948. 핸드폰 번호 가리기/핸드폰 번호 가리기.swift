func solution(_ phone_number:String) -> String? {
    guard (4...20).contains(phone_number.count) else {
        print ("입력값은 길이 4 이상, 20이하인 문자열이어야 합니다.")
        return nil
    }
    
    let censoredPhoneNumber = phone_number.enumerated().map { index, char in 
        index < (phone_number.count - 4) ? "*" : char }
    return String(censoredPhoneNumber)
}