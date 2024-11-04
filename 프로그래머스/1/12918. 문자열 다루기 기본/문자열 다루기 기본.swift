let validLetters = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz")
let validNumbers = Set("0123456789")

func solution(_ str:String) -> Bool? {
    guard (1...8).contains(str.count) && str.allSatisfy({ validLetters.contains($0) || validNumbers.contains($0) }) else {
        print("입력값은 길이 1 이상 길이 8 이하이며, 영문 알파벳 대소문자 또는 0부터 9까지 숫자로 이루어진 문자열이어야 합니다.")
        return nil
    }
    
    let isLengthValid = str.count == 4 || str.count == 6
    let isCharactersValid = str.allSatisfy({ validNumbers.contains($0) })
    
    return isLengthValid && isCharactersValid
}