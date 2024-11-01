func solution(_ str: String) -> String {
    // Algorithm 1
    /*
    let lowercases = Set("abcdefghijklmnopqrstuvwxyz")
    let uppercases = Set("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let validCharacters = lowercases.union(uppercases)
    
    guard str.count >= 1 && str.allSatisfy({validCharacters.contains($0)}) else {
        print("입력값은 길이 1 이상인 문자열이고, 영문 대소문자로만 구성되어야 합니다.")
        return ""
    }

    let strLowercasesSorted = str.filter({lowercases.contains($0)}).sorted(by: >)
    let strUppercasesSorted = str.filter({uppercases.contains($0)}).sorted(by: >)
    let sortedString = String(strLowercasesSorted + strUppercasesSorted)
    return sortedString
    */
    
    // Algorithm 2
    // 오답: .isLetter 는 영어뿐만 아니라 한글, 그리스어, 키릴 문자 등 문자로 분류되는 모든 문자에 대해 true를 반환한다.
    /*
    guard !str.isEmpty && str.allSatisfy({ $0.isLetter }) else {
        print("입력값은 길이 1 이상인 문자열이고, 영문 대소문자로만 구성되어야 합니다.")
        return ""
    }
    
    let (lowercases, uppercases) = str.sorted(by: >).reduce(into: ([Character](), [Character]())) { result, char in 
        if char.isLowercase {
            result.0.append(char)
        } else {
            result.1.append(char)
        }
    }
    var sortedString = String(lowercases) + String(uppercases)
    return sortedString
    */
    
    // Algorithm 3
    // sorted의 문자열 정렬은 유니코드 값을 기준으로 정렬한다.
    // a ~ z : 97 ~ 122, A ~ Z : 65 ~ 90.
    let validCharacters = Set("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
    
    guard !str.isEmpty && str.allSatisfy({ validCharacters.contains($0) }) else {
    print("입력값은 길이 1 이상인 문자열이고, 영문 대소문자로만 구성되어야 합니다.")
    return ""
    }
    
    return String(str.sorted(by: >))
}
