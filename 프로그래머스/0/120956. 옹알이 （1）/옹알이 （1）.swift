import Foundation

func solution(_ words: [String]) -> Int {
    let validLetters = Set("abcdefghijklmnopqrstuvwxyz")
    let babbles = ["aya", "ye", "woo", "ma"]
    
    guard (1...100).contains(words.count), words.allSatisfy({ (1...15).contains($0.count) }),
        words.allSatisfy({ $0.allSatisfy({ validLetters.contains($0) }) }),
        words.allSatisfy({ $0.components(separatedBy: babbles[0]).count - 1 <= 2 }),
        words.allSatisfy({ $0.components(separatedBy: babbles[1]).count - 1 <= 2 }),
        words.allSatisfy({ $0.components(separatedBy: babbles[2]).count - 1 <= 2 }),
        words.allSatisfy({ $0.components(separatedBy: babbles[3]).count - 1 <= 2 })
    else {
        print("""
              1 ≤ 입력값의 길이 ≤ 100이고, 1 ≤ 입력값의 요소의 길이 ≤ 15이며,
              각 요소에서 "aya, "ye", "woo", "ma"는 각각 최대 한 번씩만 등장해야 합니다.
              또한, 모든 요소는 알파벳 소문자로만 이루어져 있어야 합니다.
             """)
        return -1
    }
    
    
    var processedWords = words
    
    for i in 0..<processedWords.count {
        for babble in babbles {
            processedWords[i] = processedWords[i].replacingOccurrences(of: babble, with: ".")
        }
    }
    
    return processedWords.filter({ $0.allSatisfy({ $0 == "." }) }).count
}