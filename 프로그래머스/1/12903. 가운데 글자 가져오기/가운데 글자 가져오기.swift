func solution(_ word: String) -> String {
    guard (1...100).contains(word.count) else {
        print("입력값은 길이가 1 이상, 100이하인 문자열이어야 합니다.")
        return ""
    }
    // Time Complexity: O(1) on average, worst-case O(n) for complex Unicode handling
    // Space Complexity: O(1)
    // 유니코드 스칼라 대응 가능 (더 안전함)
    let middleIndexInt = word.count / 2
    var middleString = ""
    if let middleIndex = word.index(word.startIndex, offsetBy: middleIndexInt, limitedBy: word.endIndex) {
        middleString = word.count.isMultiple(of: 2) 
        ? String(word[word.index(middleIndex, offsetBy: -1)]) + String(word[middleIndex]) 
        : String(word[middleIndex])
        return middleString
    }
    return ""
    
    // Time Complexity: O(n)
    // Space Complexity: O(n)   
    // 유니코드 스칼라 대응 불가능
    // let characters = word.map {$0}
    // let middleIndex = word.count / 2
    // let middleString = word.count.isMultiple(of: 2) 
    //     ? (String(characters[middleIndex - 1]) + String(characters[middleIndex]))
    //     : String(characters[middleIndex])
    // return middleString
}