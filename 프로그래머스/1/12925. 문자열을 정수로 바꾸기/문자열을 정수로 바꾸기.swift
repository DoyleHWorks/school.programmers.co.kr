func solution(_ s:String) -> Int? {
    guard (1...5).contains(s.count) else {
        print("입력값의 길이는 1 이상 5 이하이어야 합니다.")
        return nil
    }
    
    if s.hasPrefix("0") {
        print("입력값은 '0'으로 시작할 수 없습니다.")
        return nil
    }
    
    let validCharacters = Set("0123456789+-")
    if !s.allSatisfy({ validCharacters.contains($0) }) {
        print("입력값은 부호(+, -)와 숫자로만 이루어져야 합니다.")
        return nil
    }
    
    return Int(s)
}